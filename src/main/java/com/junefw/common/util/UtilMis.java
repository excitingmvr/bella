package com.junefw.common.util;

public class UtilMis {
	
//	구글api를 이용하여 주소값을 던지면 위도 경도를 받아오는 정적 함수
//	구글 계정 등록이 필요하여 현재는 주석 처리
//	public static Float[] getLatLng(String location) throws Exception{
//	
//		GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();
//	
//		Geocoder geocoder = new Geocoder();
//		GeocodeResponse geocoderResponse = geocoder.geocode(geocoderRequest);
//	
//		System.out.println("geocoderResponse.getStatus(): " + geocoderResponse.getStatus());
//		
//		if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {
//			GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();
//			LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();
//		
//			Float[] coords = new Float[2];
//			coords[0] = latitudeLongitude.getLat().floatValue();
//			coords[1] = latitudeLongitude.getLng().floatValue();
//			
//			System.out.println("coords[0]: " + coords[0]);
//			System.out.println("coords[1]: " + coords[1]);
//			
//			return coords;
//		} else {
//			return null;
//		}
//	}
	
}
