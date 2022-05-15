package Model;

public class Account {
    private int MaTaiKhoan;
    private String TenDangNhap;
    private String MatKhau;
    private String HoTen;
    private String Email;
    private int LoaiTaiKhoan;

    public Account() {}
    public Account(int MaTaiKhoan, String TenDangNhap, String MatKhau, String HoTen, String Email, int LoaiTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
        this.TenDangNhap = TenDangNhap;
        this.MatKhau = MatKhau;
        this.HoTen = HoTen;
        this.Email = Email;
        this.LoaiTaiKhoan = LoaiTaiKhoan;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
    }

    public String getTenDangNhap() {
        return TenDangNhap;
    }

    public void setTenDangNhap(String TenDangNhap) {
        this.TenDangNhap = TenDangNhap;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getLoaiTaiKhoan() {
        return LoaiTaiKhoan;
    }

    public void setLoaiTaiKhoan(int LoaiTaiKhoan) {
        this.LoaiTaiKhoan = LoaiTaiKhoan;
    }
    
    
}
