package service;

import model.BenhNhan;

import java.util.List;

public interface IBenhNhanService {
    List<BenhNhan> findAll();
    BenhNhan info(String maBenhNhan);
    boolean edit(BenhNhan benhNhan);

}
