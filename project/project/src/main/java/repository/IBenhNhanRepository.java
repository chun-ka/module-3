package repository;

import model.BenhNhan;

import java.util.ArrayList;
import java.util.List;

public interface IBenhNhanRepository {
    List<BenhNhan> findAll();
    BenhNhan info(String maBenhNhan);
    boolean edit(BenhNhan benhNhan);

}
