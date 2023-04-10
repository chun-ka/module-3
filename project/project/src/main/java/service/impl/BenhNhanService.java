package service.impl;

import model.BenhNhan;
import repository.IBenhNhanRepository;
import repository.impl.BenhNhanRepository;
import service.IBenhNhanService;

import java.util.List;

public class BenhNhanService implements IBenhNhanService {
    IBenhNhanRepository benhNhanRepository=new BenhNhanRepository();

    @Override
    public List<BenhNhan> findAll() {
        return benhNhanRepository.findAll();
    }

    @Override
    public BenhNhan info(String maBenhNhan) {
        return benhNhanRepository.info(maBenhNhan);
    }

    @Override
    public boolean edit(BenhNhan benhNhan) {
        return benhNhanRepository.edit(benhNhan);
    }
}
