package com.jobportal.daos;

import java.util.List;

import com.jobportal.models.Job;

public interface JobDao {
	public boolean addJob(Job jobObj);
	public boolean deleteJob(int jobId);
	public boolean updateJob(Job jobObj);
	public Job getJobById(int jobId);
	public List<Job> getAllJob(String recruiterEmail);
}
