package org.blueshit.csms.service.impl;


import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.service.StorageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class StroageServiceImpl extends DaoSupportImpl<Storage> implements
		StorageService {

}
