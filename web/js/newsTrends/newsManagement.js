// 触发文件选择器
document.querySelector('.insert-image').addEventListener('click', function() {
    document.getElementById('image-input').click();
});
//选择完图片之后，上传图片到本地的临时文件夹中
document.getElementById('image-input').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const formData = new FormData();
        formData.append('image', file);
        formData.append('title', document.getElementById('title').value);
        formData.append('date',document.getElementById('publish-time').value)

        const xhr = new XMLHttpRequest();
        xhr.open('POST', '../imageUploadServlet', true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                const response = JSON.parse(xhr.responseText);
                const filename = response.fileName;
                if (response.success) {
                    const newImageTag = `\n<img alt="" src="`+filename+`">`; // 使用服务器返回的文件名
                    const contentArea = document.getElementById('content');
                    //const currentContent = contentArea.value;
                    contentArea.value += newImageTag; // 在内容末尾添加新的<img>标签
                } else {
                    alert('上传失败: ' + response.message);
                }
            } else {
                alert('上传失败: ' + xhr.responseText);
            }
        };
        xhr.send(formData);
    }
});
//上传临时新闻，并切换到新闻草稿界面
document.getElementById('news-submit').addEventListener('click',function (event){
    event.preventDefault(); // 阻止表单的默认提交行为
    const title = document.getElementById('title').value;
    const publishTime = document.getElementById('publish-time').value;
    const author = document.getElementById('author').value;
    let content = document.getElementById('content').value;
    // 将转义的换行符替换为非转义的换行符
    content = content.replace(/\n/g, '\\n');
    // 发送请求
    const xhr = new XMLHttpRequest();
    xhr.open('POST', '../newsTempUploadServlet', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onload = function () {
        if (xhr.status === 200) {
            const response = JSON.parse(xhr.responseText);
            console.log(xhr.responseText);
            if (response.success) {
                alert('上传成功');
                // 清除表单
                document.getElementById('title').value = '';
                document.getElementById('publish-time').value = '';
                document.getElementById('author').value = '';
                document.getElementById('content').value = '';
            } else {
                alert('上传失败: ' + response.message);
            }
        } else {
            alert('上传失败: ' + xhr.responseText);
        }
    };
    // 直接以 URL 编码的形式发送数据
    console.log(publishTime);
    xhr.send(`title=${title}&publishTime=${publishTime}&author=${author}&content=${content}`);
    //切换到新闻草稿界面
    document.getElementById('newsDraft').click();
})
// 切换到新闻发布界面
document.getElementById('newsRelease').addEventListener('click', function() {
    // 隐藏所有内容
    document.querySelector('.newsRelease').style.display = 'block';
    document.querySelector('.newsDraft').style.display = 'none';
    document.querySelector('.newsManagement').style.display = 'none';
    // 清空所有内容
    clearAll();
});
// 切换到新闻草稿界面
document.getElementById('newsDraft').addEventListener('click', function() {
    // 隐藏所有内容
    document.querySelector('.newsRelease').style.display = 'none';
    document.querySelector('.newsDraft').style.display = 'block';
    document.querySelector('.newsManagement').style.display = 'none';
    // 清空所有内容
    clearAll();
    //获取新闻草稿当中的内容，动态生成
    const xhr = new XMLHttpRequest();
    xhr.open('GET', '../newsTempUploadServlet', true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            // console.log(xhr.responseText);
            const data = JSON.parse(xhr.responseText);
            const table = document.createElement('table');
            const thead = table.createTHead();
            const headerRow = thead.insertRow();
            const headers = ['标题', '发布时间', '供稿人', '行为'];
            for (let header of headers) {
                const th = document.createElement('th');
                th.textContent = header;
                headerRow.appendChild(th);
            }
            const tbody = table.createTBody();
            data.forEach(item => {
                const row = tbody.insertRow();
                const titleCell = row.insertCell(0);
                titleCell.textContent = item.title;
                const createTimeCell = row.insertCell(1);
                createTimeCell.textContent = item.createTime;
                const creatorCell = row.insertCell(2);
                creatorCell.textContent = item.creator;
                const actionsCell = row.insertCell(3);
                const publishLink = document.createElement('a');
                publishLink.textContent = '发布';
                publishLink.href = 'javascript::void(0)';
                publishLink.addEventListener('click', function () {
                    const title = item.title;
                    const date = item.createTime;
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '../newsTempReleaseServlet', true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    xhr.onload = function () {
                        if (xhr.status === 200) {
                            console.log(xhr.responseText);
                            const response = JSON.parse(xhr.responseText);
                            if (response.success) {
                                alert('发布成功');
                            }
                            else {
                                console.log(response.message);
                                alert('发布失败:'+ response.message);
                            }
                        } else {
                            console.log('xhr:'+xhr.responseText);
                            alert('发布失败:'+ xhr.responseText);
                        }
                    };
                    // 直接以 URL 编码的形式发送数据
                    xhr.send(`title=${title}&date=${date}`);
                    console.log('发布：' + `title=${title}&date=${date}`);
                });
                actionsCell.appendChild(publishLink);
                const previewLink = document.createElement('a');
                previewLink.textContent = '预览';
                previewLink.href = 'javascript::void(0)';
                previewLink.addEventListener('click', function () {
                    const title = item.title;
                    const date = item.createTime;
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '../newsTempPreviewServlet', true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    xhr.onload = function () {
                        /*console.log(title+date);
                        console.log('xhr:'+xhr.responseText);*/
                        if (xhr.status === 200) {
                            const previewWindow = window.open('', '_blank');
                            previewWindow.document.write(xhr.responseText);
                        } else {
                            //console.log('xhr:'+xhr.responseText);
                            alert('预览失败:'+ xhr.responseText);
                        }
                    };
                    // 直接以 URL 编码的形式发送数据
                    xhr.send(`title=${title}&date=${date}`);
                });
                actionsCell.appendChild(previewLink);
                const deleteLink = document.createElement('a');
                deleteLink.textContent = '删除';
                deleteLink.href = 'javascript::void(0)';
                deleteLink.addEventListener('click', function () {
                    const title = item.title;
                    const date = item.createTime;
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '../newsTempDeleteServlet', true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    xhr.onload = function () {
                        if (xhr.status === 200) {
                            console.log(xhr.responseText);
                            const response = JSON.parse(xhr.responseText);
                            if (response.success) {
                                alert('删除成功');
                            }
                            else {
                                console.log(response.message);
                                alert('删除失败:'+ response.message);
                            }
                        } else {
                            console.log('xhr:'+xhr.responseText);
                            alert('删除失败:'+ xhr.responseText);
                        }
                    };
                    // 直接以 URL 编码的形式发送数据
                    xhr.send(`title=${title}&date=${date}`);
                });
                actionsCell.appendChild(deleteLink);
            });
            document.querySelector('.newsDraft').appendChild(table);
            // console.log('生成表格成功');
        } else {
            alert('获取新闻列表失败:'+ xhr.responseText);
        }
    };
    xhr.send();
});
// 切换到新闻管理界面
document.getElementById('newsManagement').addEventListener('click', function() {
    // 隐藏所有内容
    document.querySelector('.newsRelease').style.display = 'none';
    document.querySelector('.newsDraft').style.display = 'none';
    document.querySelector('.newsManagement').style.display = 'block';
    // 清空所有内容
    clearAll();
    //获取新闻管理当中的内容，动态生成
    const xhr = new XMLHttpRequest();
    xhr.open('GET', '../newsServlet', true);
    xhr.onload = function() {
        //console.log(xhr.responseText);
        if (xhr.status === 200) {
            const data = JSON.parse(xhr.responseText);
            const table = document.createElement('table');
            const thead = table.createTHead();
            const headerRow = thead.insertRow();
            const headers = ['标题', '发布时间', '供稿人', '行为'];
            for (let header of headers) {
                const th = document.createElement('th');
                th.textContent = header;
                headerRow.appendChild(th);
            }
            const tbody = table.createTBody();
            data.forEach(item => {
                const row = tbody.insertRow();
                const titleCell = row.insertCell(0);
                titleCell.textContent = item.title;
                const createTimeCell = row.insertCell(1);
                createTimeCell.textContent = item.createTime;
                const creatorCell = row.insertCell(2);
                creatorCell.textContent = item.creator;
                const actionsCell = row.insertCell(3);
                const previewLink = document.createElement('a');
                previewLink.textContent = '预览';
                previewLink.href = 'javascript::void(0)';
                previewLink.addEventListener('click', function () {
                    const title = item.title;
                    const date = item.createTime;
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '../newsPreviewServlet', true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    xhr.onload = function () {
                        /*console.log(title+date);
                        console.log('xhr:'+xhr.responseText);*/
                        if (xhr.status === 200) {
                            const previewWindow = window.open('', '_blank');
                            previewWindow.document.write(xhr.responseText);
                        } else {
                            //console.log('xhr:'+xhr.responseText);
                            alert('预览失败:'+ xhr.responseText);
                        }
                    };
                    // 直接以 URL 编码的形式发送数据
                    xhr.send(`title=${title}&date=${date}`);
                });
                actionsCell.appendChild(previewLink);
                const deleteLink = document.createElement('a');
                deleteLink.textContent = '删除';
                deleteLink.href = 'javascript::void(0)';
                deleteLink.addEventListener('click', function () {
                    const title = item.title;
                    const date = item.createTime;
                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '../newsDeleteServlet', true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    xhr.onload = function () {
                        if (xhr.status === 200) {
                            console.log(xhr.responseText);
                            const response = JSON.parse(xhr.responseText);
                            if (response.success) {
                                alert('删除成功');
                            }
                            else {
                                console.log(response.message);
                                alert('删除失败:'+ response.message);
                            }
                        } else {
                            console.log('xhr:'+xhr.responseText);
                            alert('删除失败:'+ xhr.responseText);
                        }
                    };
                    // 直接以 URL 编码的形式发送数据
                    xhr.send(`title=${title}&date=${date}`);
                });
                actionsCell.appendChild(deleteLink);
            });
            document.querySelector('.newsManagement').appendChild(table);
            // console.log('生成表格成功');
        } else {
            alert('获取新闻列表失败:'+ xhr.responseText);
        }
    };
    xhr.send();
});
//清空所有内容
function clearAll(){
    // 清除表单
    document.getElementById('title').value = '';
    document.getElementById('publish-time').value = '';
    document.getElementById('author').value = '';
    document.getElementById('content').value = '';
    // 清空表格
    document.querySelector('.newsDraft').innerHTML = '';
    // 清空新闻管理界面
    document.querySelector('.newsManagement').innerHTML = '';
}