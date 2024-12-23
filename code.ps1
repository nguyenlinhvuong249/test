# URL của file .bat trên GitHub
$FileUrl = "https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat"

# Tên file tạm thời
$TempFile = "$env:TEMP\idata_setup_share.bat"

# Tải file về máy
Write-Host "Đang tải file .bat từ URL..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $FileUrl -OutFile $TempFile -UseBasicParsing

# Kiểm tra xem file đã được tải thành công chưa
if (Test-Path $TempFile) {
    Write-Host "File đã được tải thành công: $TempFile" -ForegroundColor Green

    # Thực thi file .bat bằng Start-Process
    Write-Host "Đang thực thi file .bat..." -ForegroundColor Cyan
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c", $TempFile -NoNewWindow -Wait

    # Xóa file sau khi thực thi
    Write-Host "Xóa file tạm sau khi thực thi..." -ForegroundColor Yellow
    Remove-Item -Path $TempFile -Force

    Write-Host "Hoàn tất. File tạm đã được xóa." -ForegroundColor Green
} else {
    Write-Host "Lỗi: Không tải được file. Vui lòng kiểm tra URL hoặc kết nối mạng." -ForegroundColor Red
}

# Đóng cửa sổ PowerShell
Write-Host "Đóng cửa sổ PowerShell..." -ForegroundColor Yellow
exit