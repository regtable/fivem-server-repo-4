
document.getElementById('close-btn').addEventListener('click', function() {
    fetch('https://your_resource_name/closeMenu', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' }
    });
});

document.getElementById('admin-action-form').addEventListener('submit', function(e) {
    e.preventDefault();
    const action = document.getElementById('action').value;

    fetch('https://your_resource_name/submitAdminAction', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: action })
    });
});
