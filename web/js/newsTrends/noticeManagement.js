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
    document.getElementById('noticeRelease').addEventListener('click', function() {
        document.querySelector('.noticeRelease').style.display = 'block';
        document.querySelector('.noticeManagement').style.display = 'none';
        clearAll();
    });

    // 资源管理按钮点击事件
    document.getElementById('noticeManagement').addEventListener('click', function() {
        document.querySelector('.noticeRelease').style.display = 'none';
        document.querySelector('.noticeManagement').style.display = 'block';
        clearAll();
    });

    // 添加通知类型筛选事件
    document.getElementById('notice-type-filter').addEventListener('change', function() {
        const selectedType = this.value;
        if (selectedType) {
            loadNoticesByType(selectedType);
        } else {
            document.getElementById('notice-list').innerHTML = '';
        }
    });

    // 加载特定类型的通知
    function loadNoticesByType(type) {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', `../noticeGetServlet?type=${type}`, true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                console.log(xhr.responseText);
                try {
                    const data = JSON.parse(xhr.responseText);
                    displayNotices(data);
                } catch (e) {
                    console.error('解析数据失败:', e);
                    alert('获取通知列表失败');
                }
            } else {
                alert('获取通知列表失败:' + xhr.responseText);
            }
        };
        xhr.send();
    }

    // 显示通知列表
    function displayNotices(data) {
        const container = document.getElementById('notice-list');
        container.innerHTML = '';

        const table = document.createElement('table');
        const thead = table.createTHead();
        const headerRow = thead.insertRow();

        const headers = ['标题', '发布时间', '行为'];
        headers.forEach(header => {
            const th = document.createElement('th');
            th.textContent = header;
            headerRow.appendChild(th);
        });

        const tbody = table.createTBody();
        data.forEach(item => {
            const row = tbody.insertRow();
            row.insertCell(0).textContent = item.title;
            row.insertCell(1).textContent = item.publishTime;

            const actionsCell = row.insertCell(2);
            const deleteLink = document.createElement('a');
            deleteLink.textContent = '删除';
            deleteLink.href = 'javascript:void(0)';
            deleteLink.addEventListener('click', function() {
                const type = document.getElementById('notice-type-filter').value;
                const title = item.title;
                const publishTime = item.publishTime;

                const xhr = new XMLHttpRequest();
                xhr.open('POST', '../noticeGetServlet', true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                xhr.onload = function() {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            alert('删除成功');
                        } else {
                            console.log(response.message);
                            alert('删除失败:' + response.message);
                        }
                    } else {
                        console.log('xhr:' + xhr.responseText);
                        alert('删除失败:' + xhr.responseText);
                    }
                    location.reload();
                    document.getElementById("noticeManagement").click();
                    document.getElementById("notice-type-filter").value = type;
                };
                xhr.send(`type=${type}&title=${title}&publishTime=${publishTime}`);
            });
            actionsCell.appendChild(deleteLink);
        });
        container.appendChild(table);
    }

    // 修改 clearAll 函数，包含 content 的清理
    function clearAll() {
        document.getElementById('title').value = '';
        document.getElementById('publish-time').value = '';
        document.getElementById('content').value = '';
        document.getElementById('notice-type-filter').value = '';
        document.getElementById('notice-list').innerHTML = '';
        const fileInputs = document.querySelectorAll('.file-input-group');
        fileInputs.forEach(input => {
            if (input !== fileInputs[0]) {
                input.remove();
            }
        });
        fileInputs[0].querySelector('input').value = '';
    }

});