package demo.web.helper;

import java.util.HashSet;
import java.util.Set;

public class FormBean {
	private Set<Integer> selectedNodes = new HashSet<Integer>();
	private Integer deletedId;
	private Boolean showAddRow = false;
	private Boolean showEditPerson = false;
	private Integer personId;
	private Integer buildingId;
	private Integer floorId;
	private Integer roomId;
	private String name;
	private String firstName;
	private String lastName;
	private String email;
	
	public Set<Integer> getSelectedNodes() { return selectedNodes; }
	public Integer getDeletedId() { return deletedId; }
	public Boolean getShowAddRow() { return showAddRow; }
	public Boolean getShowEditPerson() { return showEditPerson; }
	public String getName() { return name; }
	public Integer getPersonId() { return personId; }
	public Integer getBuildingId() { return buildingId; }
	public Integer getFloorId() { return floorId; }
	public Integer getRoomId() { return roomId; }
	public String getFirstName() { return firstName; }
	public String getLastName() { return lastName; }
	public String getEmail() { return email; }

	public void setSelectedNodes(Set<Integer> selectedNodes) { this.selectedNodes = selectedNodes; }
	public void setDeletedId(Integer deletedId) { this.deletedId = deletedId; }
	public void setShowAddRow(Boolean showAddRow) { this.showAddRow = showAddRow; }
	public void setShowEditPerson(Boolean showEditPerson) { this.showEditPerson = showEditPerson; }
	public void setName(String name) { this.name = name; }
	public void setPersonId(Integer personId) { this.personId = personId; }
	public void setBuildingId(Integer buildingId) { this.buildingId = buildingId; }
	public void setFloorId(Integer floorId) { this.floorId = floorId; }
	public void setRoomId(Integer roomId) { this.roomId = roomId; }
	public void setFirstName(String firstName) { this.firstName = firstName; }
	public void setLastName(String lastName) { this.lastName = lastName; }
	public void setEmail(String email) { this.email = email; }
	
}
