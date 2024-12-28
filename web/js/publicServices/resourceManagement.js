document.addEventListener('DOMContentLoaded', function() {
    const container = document.getElementById('file-inputs-container');

    //监听container内的所有file input的change事件
    container.addEventListener('change', function(e) {
        if (e.target.classList.contains('file-input')) {
            // 检查是否是最后一个input
            const inputs = container.getElementsByClassName('file-input');
            const currentInput = e.target;

            if (currentInput === inputs[inputs.length - 1]) {
                // 创建新的input组
                const newGroup = document.createElement('div');
                newGroup.className = 'file-input-group';

                const newInput = document.createElement('input');
                newInput.type = 'file';
                newInput.className = 'file-input';
                newInput.name = 'file[]';
                newInput.accept = '*';

                newGroup.appendChild(newInput);
                container.appendChild(newGroup);
            }
        }
    });

    // 资源发布按钮点击事件
    document.getElementById('resourceRelease').addEventListener('click', function() {
        document.querySelector('.resourceRelease').style.display = 'block';
        document.querySelector('.resourceManagement').style.display = 'none';
        clearAll();
    });

    // 资源管理按钮点击事件
    document.getElementById('resourceManagement').addEventListener('click', function() {
        document.querySelector('.resourceRelease').style.display = 'none';
        document.querySelector('.resourceManagement').style.display = 'block';
        clearAll();
    });

    // 资源类型筛选事件
    document.getElementById('resource-type-filter').addEventListener('change', function() {
        const selectedType = this.value;
        if (selectedType) {
            loadResourcesByType(selectedType);
        } else {
            document.getElementById('resource-list').innerHTML = '';
        }
    });

    // 加载特定类型的资源
    function loadResourcesByType(type) {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', `../resourceGetServlet?type=${type}`, true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                console.log(xhr.responseText);
                try {
                    const data = JSON.parse(xhr.responseText);
                    displayResources(data);
                } catch (e) {
                    console.error('解析数据失败:', e);
                    alert('获取资源列表失败');
                }
            } else {
                alert('获取资源列表失败:' + xhr.responseText);
            }
        };
        xhr.send();
    }

    // 显示资源列表
    function displayResources(data) {
        const container = document.getElementById('resource-list');
        container.innerHTML = ''; // 清空现有内容

        const table = document.createElement('table');
        const thead = table.createTHead();
        const headerRow = thead.insertRow();

        const headers = ['标题', '发布时间', '行为'];
        for (let header of headers) {
            const th = document.createElement('th');
            th.textContent = header;
            headerRow.appendChild(th);
        }
        const tbody = table.createTBody();
        data.forEach(item  => {
            const row = tbody.insertRow();
            const titleCell = row.insertCell(0);
            titleCell.textContent = item.title;
            const createTimeCell = row.insertCell(1);
            createTimeCell.textContent = item.publishTime;
            const actionsCell = row.insertCell(2);
            const deleteLink = document.createElement('a');
            deleteLink.textContent = '删除';
            deleteLink.href = 'javascript::void(0)';
            deleteLink.addEventListener('click', function () {
                const type= document.getElementById('resource-type-filter').value;
                const title = item.title;
                const publishTime = item.publishTime;
                const xhr = new XMLHttpRequest();
                xhr.open('POST', '../resourceGetServlet', true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                xhr.onload = function () {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            alert('删除成功');
                        }
                        else {
                            console.log(response.message);
                            alert('删除失败:'+ response.message);
                        }
                    }else{
                        console.log('xhr:'+xhr.responseText);
                        alert('删除失败:'+ xhr.responseText);
                    }
                    location.reload();
                    document.getElementById("resourceManagement").click();
                    document.getElementById("resource-type-filter").value="";
                }
                xhr.send(`type=${type}&title=${title}&publishTime=${publishTime}`);
            });
            actionsCell.appendChild(deleteLink)
        })
        container.appendChild(table);
    }

    // 清空所有内容
    function clearAll() {
        document.getElementById('title').value = '';
        document.getElementById('publish-time').value = '';
        document.getElementById('resource-type-filter').value = '';
        document.getElementById('resource-list').innerHTML = '';
        const fileInputs = document.querySelectorAll('.file-input-group');
        fileInputs.forEach(input => {
            if (input !== fileInputs[0]) {
                input.remove();
            }
        });
        fileInputs[0].querySelector('input').value = '';
    }

});