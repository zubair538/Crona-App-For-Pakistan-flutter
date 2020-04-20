import 'package:cronaupdate/generated/json/base/json_convert_content.dart';
import "package:date_format/date_format.dart";
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PakistanEntity with JsonConvert<PakistanEntity> {

	PakistanConfirmed confirmed;
	PakistanRecovered recovered;
	PakistanDeaths deaths;
  String  lastUpdate;
//	DateTime todayDateTime = DateTime.parse(lastUpdate);

	DateTime get lastUpdatedAt{
		return DateTime.parse(lastUpdate);
	}
  DateFormat  get date{
		return '';
	}
}


class PakistanConfirmed with JsonConvert<PakistanConfirmed> {
	int value;
	String detail;
}

class PakistanRecovered with JsonConvert<PakistanRecovered> {
	int value;
	String detail;
}

class PakistanDeaths with JsonConvert<PakistanDeaths> {
	int value;
	String detail;
}
