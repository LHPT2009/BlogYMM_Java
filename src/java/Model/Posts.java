package Model;

import java.util.Date;

public class Posts {
    private int MaBaiViet;
    private String TenBaiViet;
    private String NoiDung;
    private Date NgayTao;
    private String HinhAnh;
    private String Video;
    private int MaLoai;
    private int MaTaiKhoan;
    private String Khac;

    public Posts() {
    }

    public Posts(int MaBaiViet, String TenBaiViet, String NoiDung, Date NgayTao, String HinhAnh, String Video, int MaLoai, int MaTaiKhoan, String Khac) {
        this.MaBaiViet = MaBaiViet;
        this.TenBaiViet = TenBaiViet;
        this.NoiDung = NoiDung;
        this.NgayTao = NgayTao;
        this.HinhAnh = HinhAnh;
        this.Video = Video;
        this.MaLoai = MaLoai;
        this.MaTaiKhoan = MaTaiKhoan;
        this.Khac = Khac;
    }

    public int getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(int MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    public String getTenBaiViet() {
        return TenBaiViet;
    }

    public void setTenBaiViet(String TenBaiViet) {
        this.TenBaiViet = TenBaiViet;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    public Date getNgayTao() {
        return NgayTao;
    }

    public void setNgayTao(Date NgayTao) {
        this.NgayTao = NgayTao;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public int getMaLoai() {
        return MaLoai;
    }

    public void setMaLoai(int MaLoai) {
        this.MaLoai = MaLoai;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
    }

    public String getKhac() {
        return Khac;
    }

    public void setKhac(String Khac) {
        this.Khac = Khac;
    }

    @Override
    public String toString() {
        return "Posts{" + "MaBaiViet=" + MaBaiViet + ", TenBaiViet=" + TenBaiViet + ", NoiDung=" + NoiDung + ", NgayTao=" + NgayTao + ", HinhAnh=" + HinhAnh + ", Video=" + Video + ", MaLoai=" + MaLoai + ", MaTaiKhoan=" + MaTaiKhoan + ", Khac=" + Khac + '}';
    }
}
