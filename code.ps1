# URL của file trên GitHub
$FileUrl = "https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat"

# Tên file sẽ tải về
$LocalFile = "idata_setup_share.bat"

# Tải file từ GitHub
Write-Host "Đang tải file từ GitHub..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $FileUrl -OutFile $LocalFile -UseBasicParsing

# Kiểm tra nếu file đã được tải thành công
if (Test-Path $LocalFile) {
    Write-Host "File đã được tải thành công: $LocalFile" -ForegroundColor Green

    # Thực thi file
    Write-Host "Đang thực thi file..." -ForegroundColor Cyan
    Start-Process -FilePath $LocalFile -Wait

    # Xóa file sau khi thực thi
    Write-Host "Xóa file sau khi thực thi..." -ForegroundColor Yellow
    Remove-Item -Path $LocalFile -Force

    Write-Host "Hoàn tất. File đã được xóa." -ForegroundColor Green
} else {
    Write-Host "Lỗi: Không tải được file. Vui lòng kiểm tra URL hoặc kết nối mạng." -ForegroundColor Red
}

# Đóng cửa sổ PowerShell
Write-Host "Đóng cửa sổ PowerShell..." -ForegroundColor Yellow
exit