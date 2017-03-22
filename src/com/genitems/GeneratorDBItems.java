package com.genitems;


import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import atg.nucleus.GenericService;
import atg.repository.MutableRepository;
import atg.repository.MutableRepositoryItem;
import atg.repository.Repository;
import atg.repository.RepositoryException;


/**
 * This class Create random drivers
 * @author Mahdi BS
 *@version 1.0
 */
public class GeneratorDBItems  extends GenericService{

	private Repository repository;
	private Random random;


	public GeneratorDBItems() {
		this.random = new Random();
	}

	public Repository getRepository() {
		return repository;
	}

	public void setRepository(Repository repository) {
		this.repository = repository;
	}

	public boolean generateRandomItems() {
		int selectRandomData;
		Set<MutableRepositoryItem> accidentsRepositoryItem;
		List<MutableRepositoryItem> destinationsRepositoryItem;
		Set<MutableRepositoryItem> vehiculesRepositoryItem;
		Map<String, MutableRepositoryItem> policeFines;
		int randomDriver = random.nextInt(5);

		for (int j = 0; j < randomDriver; j++) {
			selectRandomData = random.nextInt(9);
			try {
				MutableRepositoryItem itemDriver = ((MutableRepository) repository).createItem("driver");
				itemDriver.setPropertyValue("firstName", DataBD.FISTNAME_DRIVER[selectRandomData]);
				itemDriver.setPropertyValue("lastName", DataBD.LASTNAME_DRIVER[selectRandomData]);
				itemDriver.setPropertyValue("type", DataBD.TYPE_LICENSE[selectRandomData]);
				itemDriver.setPropertyValue("num", DataBD.NUM_LICENSE[selectRandomData]);
				itemDriver.setPropertyValue("email", DataBD.MAIL_ADDRESS[0]);

				accidentsRepositoryItem = (Set<MutableRepositoryItem>) itemDriver.getPropertyValue("accidents");
				destinationsRepositoryItem = (List<MutableRepositoryItem>) itemDriver.getPropertyValue("destinations");
				vehiculesRepositoryItem = (Set<MutableRepositoryItem>) itemDriver.getPropertyValue("vehicules");
				policeFines = (Map<String, MutableRepositoryItem>) itemDriver.getPropertyValue("policefines");

				
				itemDriver.setPropertyValue("accidents", generateRandomAccidents( accidentsRepositoryItem));
				itemDriver.setPropertyValue("destinations", generateRandomDestinations( destinationsRepositoryItem));
				itemDriver.setPropertyValue("vehicules", generateRandomVehicules(vehiculesRepositoryItem));
				itemDriver.setPropertyValue("policefines", generateRandomPolicefine(policeFines));


				((MutableRepository) repository).addItem(itemDriver);
				logInfo("succces added ");

			} catch (RepositoryException e) {
				// TODO Auto-generated catch block
				logError("Error", e);

				return false;
			}
		}

		return true;
	}

	/**
	 * This methode adds a Map of Police Fine to a Driver 
	 * @param Driver's PoliceFine 
	 * @return PoliceFines linked to the Driver 
	 * @throws RepositoryException
	 */
	private Map<String, MutableRepositoryItem> generateRandomPolicefine(Map<String, MutableRepositoryItem> policeFines) throws RepositoryException {
		int randomDestination = random.nextInt(10);
		for (int i = 0; i < randomDestination + 1; i++) {
			int randomData = random.nextInt(9);
			MutableRepositoryItem itemPolicefine = ((MutableRepository) repository).createItem("policefine");
			itemPolicefine.setPropertyValue("value", DataBD.VALUE_POLICEFINE[randomData]);
			policeFines.put(random.nextInt(9)+"",itemPolicefine);
		}
		return policeFines;
	}

	private Set<MutableRepositoryItem> generateRandomAccidents(Set<MutableRepositoryItem> accidentsRepositoryItem) throws RepositoryException {
		int randomDestination = random.nextInt(10);
		for (int i = 0; i < randomDestination + 1; i++) {
			int randomData = random.nextInt(9);
			MutableRepositoryItem itemAccident = ((MutableRepository) repository).createItem("accident");
			itemAccident.setPropertyValue("dateAccident", DataBD.DATE_ACCIDENT[randomData]);
			itemAccident.setPropertyValue("description", DataBD.DESCRIPTION_ACCIDENT[randomData]);
			accidentsRepositoryItem.add(itemAccident);
		}
		return accidentsRepositoryItem;

	}
	private List<MutableRepositoryItem> generateRandomDestinations(List<MutableRepositoryItem> destinationsRepositoryItem) throws RepositoryException {
		int randomData = 0;
		int randomDestination = random.nextInt(10);
		for (int i = 0; i < randomDestination + 1; i++) {
			randomData = random.nextInt(9);
			MutableRepositoryItem itemDestination = ((MutableRepository) repository).createItem("destination");
			itemDestination.setPropertyValue("destinationCity", DataBD.DESTINATION_CITY[randomData]);
			destinationsRepositoryItem.add(itemDestination);
		}
		return destinationsRepositoryItem;

	}
	private Set<MutableRepositoryItem> generateRandomVehicules(Set<MutableRepositoryItem> vehiculesRepositoryItem) throws RepositoryException {
		int randomData = 0;
		int randomVehicule = random.nextInt(10);
		for (int i = 0; i < randomVehicule + 1; i++) {
			randomData = random.nextInt(9);
			MutableRepositoryItem itemVehicule = ((MutableRepository) repository).createItem("vehicule");
			itemVehicule.setPropertyValue("mark", DataBD.MARK_VEHICULE[randomData]);
			itemVehicule.setPropertyValue("mat", DataBD.MAT_VEHICULE[randomData]);
			vehiculesRepositoryItem.add(itemVehicule);
		}
		return vehiculesRepositoryItem;

	}

	

}
