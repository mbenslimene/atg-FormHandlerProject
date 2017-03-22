package com.genitems;

import atg.nucleus.GenericService;
import atg.nucleus.ServiceException;
import atg.service.scheduler.Schedulable;
import atg.service.scheduler.Schedule;
import atg.service.scheduler.ScheduledJob;
import atg.service.scheduler.Scheduler;

public class GenerateItemJob extends GenericService implements Schedulable {

	private Scheduler scheduler;
	private Schedule schedule;
	private int jobId;
	private GeneratorDBItems generatorDBItems;

	@Override
	public void performScheduledTask(Scheduler scheduler, ScheduledJob scheduledJob) {
		// TODO Auto-generated method stub
		generatorDBItems.generateRandomItems();
		logInfo("testt");

	}

	public void doStartService() throws ServiceException {
		ScheduledJob job = new ScheduledJob("hello", "print hello", getAbsoluteName(), getSchedule(), this,
				ScheduledJob.SCHEDULER_THREAD);
		jobId = getScheduler().addScheduledJob(job);

	}

	public void doStopService() throws ServiceException {
		getScheduler().removeScheduledJob(jobId);
	}

	public Scheduler getScheduler() {
		return scheduler;
	}

	public void setScheduler(Scheduler scheduler) {
		this.scheduler = scheduler;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public GeneratorDBItems getGeneratorDBItems() {
		return generatorDBItems;
	}

	public void setGeneratorDBItems(GeneratorDBItems generatorDBItems) {
		this.generatorDBItems = generatorDBItems;
	}



}
