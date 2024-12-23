# URL của file .bat trên GitHub
$FileUrl = "https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat"

# Tải nội dung file và chuyển đến cmd.exe để thực thi
Write-Host "Đang tải và thực thi file .bat từ URL..." -ForegroundColor Yellow
$BatContent = Invoke-WebRequest -Uri $FileUrl -UseBasicParsing | Select-Object -ExpandProperty Content

# Sử dụng Start-Process để thực thi nội dung bằng cmd.exe
Start-Process -FilePath "cmd.exe" -ArgumentList "/c", $BatContent -NoNewWindow

# Đóng cửa sổ PowerShell ngay sau khi chuyển lệnh
exit