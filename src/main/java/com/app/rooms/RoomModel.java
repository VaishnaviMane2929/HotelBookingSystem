package com.app.rooms;

public class RoomModel {
	 private int roomId;
	    private String roomNumber;
	    private String roomType;
	    private double price;
	    private String status;
	    private String description;
		public int getRoomId() {
			return roomId;
		}
		public void setRoomId(int roomId) {
			this.roomId = roomId;
		}
		public String getRoomNumber() {
			return roomNumber;
		}
		public void setRoomNumber(String roomNumber) {
			this.roomNumber = roomNumber;
		}
		public String getRoomType() {
			return roomType;
		}
		public void setRoomType(String roomType) {
			this.roomType = roomType;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		/**
		 * @param roomId
		 * @param roomNumber
		 * @param roomType
		 * @param price
		 * @param status
		 * @param description
		 */
		public RoomModel(int roomId, String roomNumber, String roomType, double price, String status,
				String description) {
			super();
			this.roomId = roomId;
			this.roomNumber = roomNumber;
			this.roomType = roomType;
			this.price = price;
			this.status = status;
			this.description = description;
		}
		/**
		 * @param roomNumber
		 * @param roomType
		 * @param price
		 * @param status
		 * @param description
		 */
		public RoomModel(String roomNumber, String roomType, double price, String status, String description) {
			super();
			this.roomNumber = roomNumber;
			this.roomType = roomType;
			this.price = price;
			this.status = status;
			this.description = description;
		}
		/**
		 * 
		 */
		public RoomModel() {
			super();
		}

	    // Getters and Setters
	   
	    
}