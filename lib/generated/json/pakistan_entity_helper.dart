import 'package:cronaupdate/model/pakistan_entity.dart';

pakistanEntityFromJson(PakistanEntity data, Map<String, dynamic> json) {
	if (json['confirmed'] != null) {
		data.confirmed = new PakistanConfirmed().fromJson(json['confirmed']);
	}
	if (json['recovered'] != null) {
		data.recovered = new PakistanRecovered().fromJson(json['recovered']);
	}
	if (json['deaths'] != null) {
		data.deaths = new PakistanDeaths().fromJson(json['deaths']);
	}
	if (json['lastUpdate'] != null) {
		data.lastUpdate = json['lastUpdate']?.toString();
	}
	return data;
}

Map<String, dynamic> pakistanEntityToJson(PakistanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.confirmed != null) {
		data['confirmed'] = entity.confirmed.toJson();
	}
	if (entity.recovered != null) {
		data['recovered'] = entity.recovered.toJson();
	}
	if (entity.deaths != null) {
		data['deaths'] = entity.deaths.toJson();
	}
	data['lastUpdate'] = entity.lastUpdate;
	return data;
}

pakistanConfirmedFromJson(PakistanConfirmed data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value']?.toInt();
	}
	if (json['detail'] != null) {
		data.detail = json['detail']?.toString();
	}
	return data;
}

Map<String, dynamic> pakistanConfirmedToJson(PakistanConfirmed entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['detail'] = entity.detail;
	return data;
}

pakistanRecoveredFromJson(PakistanRecovered data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value']?.toInt();
	}
	if (json['detail'] != null) {
		data.detail = json['detail']?.toString();
	}
	return data;
}

Map<String, dynamic> pakistanRecoveredToJson(PakistanRecovered entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['detail'] = entity.detail;
	return data;
}

pakistanDeathsFromJson(PakistanDeaths data, Map<String, dynamic> json) {
	if (json['value'] != null) {
		data.value = json['value']?.toInt();
	}
	if (json['detail'] != null) {
		data.detail = json['detail']?.toString();
	}
	return data;
}

Map<String, dynamic> pakistanDeathsToJson(PakistanDeaths entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['value'] = entity.value;
	data['detail'] = entity.detail;
	return data;
}