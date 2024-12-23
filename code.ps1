# URL của file trên GitHub
$FileUrl = "https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat"

# Tải và thực thi nội dung file từ URL
Write-Host "Đang tải và thực thi file từ GitHub..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $FileUrl -UseBasicParsing | Select-Object -ExpandProperty Content | Invoke-Expression

Write-Host "Hoàn tất thực thi." -ForegroundColor Green

# Đóng cửa sổ PowerShell
Write-Host "Đóng cửa sổ PowerShell..." -ForegroundColor Yellow
exit