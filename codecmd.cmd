@echo off

:: URL của file .bat
set FileUrl=https://raw.githubusercontent.com/nguyenlinhvuong249/tools_setup_idata_share/refs/heads/main/idata%20setup%20share.bat

:: Tên file tạm thời
set TempFile=%TEMP%\idata_setup_share.bat

:: Tải file về máy bằng PowerShell (vì cmd không hỗ trợ tải trực tiếp)
echo Đang tải file từ URL...
powershell -Command "Invoke-WebRequest -Uri '%FileUrl%' -OutFile '%TempFile%' -UseBasicParsing"

:: Kiểm tra nếu file đã tải thành công
if exist "%TempFile%" (
    echo File đã được tải thành công: %TempFile%

    :: Thực thi file .bat
    echo Đang thực thi file .bat...
    cmd /c "%TempFile%"

    :: Xóa file sau khi thực thi
    echo Đang xóa file tạm...
    del "%TempFile%"

    echo Hoàn tất.
) else (
    echo Lỗi: Không tải được file. Vui lòng kiểm tra URL hoặc kết nối mạng.
)

:: Thoát CMD
exit