package Model;

import java.sql.Date;

public class Hot {
    private int MaNoiBat;
    private String TenNoiBat;
    private String NgayDang;
    private String HinhAnh;
    private String NoiDung;
    private String Video;
    private String Khac;

    public Hot(){}

    public Hot(int MaNoiBat, String TenNoiBat, String NgayDang, String HinhAnh, String NoiDung, String Video, String Khac) {
        this.MaNoiBat = MaNoiBat;
        this.TenNoiBat = TenNoiBat;
        this.NgayDang = NgayDang;
        this.HinhAnh = HinhAnh;
        this.NoiDung = NoiDung;
        this.Video = Video;
        this.Khac = Khac;
    }

    public int getMaNoiBat() {
        return MaNoiBat;
    }

    public void setMaNoiBat(int MaNoiBat) {
        this.MaNoiBat = MaNoiBat;
    }

    public String getTenNoiBat() {
        return TenNoiBat;
    }

    public void setTenNoiBat(String TenNoiBat) {
        this.TenNoiBat = TenNoiBat;
    }

    public String getNgayDang() {
        return NgayDang;
    }

    public void setNgayDang(String NgayDang) {
        this.NgayDang = NgayDang;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public String getKhac() {
        return Khac;
    }

    public void setKhac(String Khac) {
        this.Khac = Khac;
    }

    @Override
    public String toString() {
        return "Hot{" + "MaNoiBat=" + MaNoiBat + ", TenNoiBat=" + TenNoiBat + ", NgayDang=" + NgayDang + ", HinhAnh=" + HinhAnh + ", NoiDung=" + NoiDung + ", Video=" + Video + ", Khac=" + Khac + '}';
    }

    
    
    
}
