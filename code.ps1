# URL của file .bat trên GitHub
$FileUrl = "https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat"

# Tải nội dung file và chuyển đến cmd.exe để thực thi
Write-Host "Đang tải và thực thi file .bat từ URL..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $FileUrl -UseBasicParsing | Select-Object -ExpandProperty Content | cmd.exe /c

# Đóng PowerShell ngay lập tức sau khi chuyển lệnh đến cmd
exit