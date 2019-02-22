package com.snowhobby.service;

import com.snowhobby.db.entity.Attenchment;

public interface UploadService {

	boolean uploadFile(Attenchment att);

	boolean deleteFile(Attenchment attment);

	boolean checkFile(String deviceId);

	boolean updateFile(Attenchment att);

}
