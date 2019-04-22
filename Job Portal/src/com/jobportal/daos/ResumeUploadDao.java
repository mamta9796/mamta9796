package com.jobportal.daos;

import com.jobportal.models.ResumeUpload;

public interface ResumeUploadDao {
	public boolean Document(ResumeUpload doc);
	public ResumeUpload getResume(String email);
}
