package com.bus;

public class Bus {

		private int id;
		private String number;
		private int did;
		private String type;
		private int totalSeat;
		private int availableSeat;
		private int rid;
		
		


		public Bus(int id, String number,  String type,int did, int totalSeat, int availableSeat, int rid) {
			this.id = id;
			this.number = number;
			this.did = did;
			this.type = type;
			this.totalSeat = totalSeat;
			this.availableSeat = availableSeat;
			this.rid = rid;
		}


		public int getId() {
			return id;
		}

		public String getNumber() {
			return number;
		}


		public int getDid() {
			return did;
		}

		public String getType() {
			return type;
		}


		public int getTotalSeat() {
			return totalSeat;
		}

		public int getAvailableSeat() {
			return availableSeat;
		}


		public int getRid() {
			return rid;
		}


}

