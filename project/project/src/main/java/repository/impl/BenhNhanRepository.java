package repository.impl;

import model.BenhNhan;
import repository.BaseRepository;
import repository.IBenhNhanRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BenhNhanRepository implements IBenhNhanRepository {
    public static final String SELECT_ALL = "select * from benh_nhan;";
    public static final String UPDATE = "update benh_nhan set ma_benh_an = ?, ten_benh_nhan =?,ngay_nhap_vien=?,ngay_ra_vien=?,ly_do_nhap_vien= ? where ma_benh_nhan=?;";
    public static final String INFO = "select * from benh_nhan where ma_benh_nhan=? ;";

    @Override
    public List<BenhNhan> findAll() {
        List<BenhNhan> benhNhanList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                String maBenhAn = resultSet.getString("ma_benh_an");
                String maBenhNhan = resultSet.getString("ma_benh_nhan");
                String tenBenhNhan = resultSet.getString("ten_benh_nhan");
                String ngayNhapVien = resultSet.getString("ngay_nhap_vien");
                String ngayRaVien = resultSet.getString("ngay_ra_vien");
                String liDo = resultSet.getString("ly_do_nhap_vien");
                BenhNhan benhNhan = new BenhNhan(maBenhAn, maBenhNhan, tenBenhNhan, ngayNhapVien, ngayRaVien, liDo);
                benhNhanList.add(benhNhan);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return benhNhanList;
    }

    @Override
    public BenhNhan info(String maBenhNhan) {
        Connection connection=BaseRepository.getConnectDB();
        BenhNhan benhNhan=null;
        try {
            PreparedStatement ps= connection.prepareStatement(INFO);
            ps.setString(1,maBenhNhan);
            ResultSet resultSet= ps.executeQuery();
            while (resultSet.next()){
                String maBenhAn = resultSet.getString("ma_benh_an");
                String tenBenhNhan = resultSet.getString("ten_benh_nhan");
                String ngayNhapVien = resultSet.getString("ngay_nhap_vien");
                String ngayRaVien = resultSet.getString("ngay_ra_vien");
                String liDo = resultSet.getString("ly_do_nhap_vien");
                benhNhan = new BenhNhan(maBenhAn, maBenhNhan, tenBenhNhan, ngayNhapVien, ngayRaVien, liDo);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return benhNhan;
    }

    @Override
    public boolean edit(BenhNhan benhNhan) {
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(UPDATE);
            ps.setString(1, benhNhan.getMaBenhAn());
            ps.setString(2, benhNhan.getTenBenhNhan());
            ps.setString(3, benhNhan.getNgayNhapVien());
            ps.setString(4, benhNhan.getNgayRaVien());
            ps.setString(5, benhNhan.getLiDo());
            ps.setString(6, benhNhan.getMaBenhNhan());
            return ps.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
