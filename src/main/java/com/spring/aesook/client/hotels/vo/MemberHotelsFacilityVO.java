package com.spring.aesook.client.hotels.vo;

public class MemberHotelsFacilityVO {
	private int hotelsCode;
	private String facilityParking;
	private String facilityPool;
	private String facilityBreakfast;
	private String facilityFitness;
	private String facilityWifi;
	private String facilityParty;
	private String facilityPc;
	private String facilityAmenity;
	public int getHotelsCode() {
		return hotelsCode;
	}
	public void setHotelsCode(int hotelsCode) {
		this.hotelsCode = hotelsCode;
	}
	public String getFacilityParking() {
		return facilityParking;
	}
	public void setFacilityParking(String facilityParking) {
		this.facilityParking = facilityParking;
	}
	public String getFacilityPool() {
		return facilityPool;
	}
	public void setFacilityPool(String facilityPool) {
		this.facilityPool = facilityPool;
	}
	public String getFacilityBreakfast() {
		return facilityBreakfast;
	}
	public void setFacilityBreakfast(String facilityBreakfast) {
		this.facilityBreakfast = facilityBreakfast;
	}
	public String getFacilityFitness() {
		return facilityFitness;
	}
	public void setFacilityFitness(String facilityFitness) {
		this.facilityFitness = facilityFitness;
	}
	public String getFacilityWifi() {
		return facilityWifi;
	}
	public void setFacilityWifi(String facilityWifi) {
		this.facilityWifi = facilityWifi;
	}
	public String getFacilityParty() {
		return facilityParty;
	}
	public void setFacilityParty(String facilityParty) {
		this.facilityParty = facilityParty;
	}
	public String getFacilityPc() {
		return facilityPc;
	}
	public void setFacilityPc(String facilityPc) {
		this.facilityPc = facilityPc;
	}
	public String getFacilityAmenity() {
		return facilityAmenity;
	}
	public void setFacilityAmenity(String facilityAmenity) {
		this.facilityAmenity = facilityAmenity;
	}
	@Override
	public String toString() {
		return "MemberHotelsFacilityVO [hotelsCode=" + hotelsCode + ", facilityParking=" + facilityParking
				+ ", facilityPool=" + facilityPool + ", facilityBreakfast=" + facilityBreakfast + ", facilityFitness="
				+ facilityFitness + ", facilityWifi=" + facilityWifi + ", facilityParty=" + facilityParty
				+ ", facilityPc=" + facilityPc + ", facilityAmenity=" + facilityAmenity + "]";
	}	
	
}
