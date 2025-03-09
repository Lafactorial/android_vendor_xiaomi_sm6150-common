/*
  Copyright (c) 2022 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 40);

DELETE FROM "qcril_emergency_source_mcc_mnc_table" where MCC = '208' AND MNC = '15' AND NUMBER = '116000';
DELETE FROM "qcril_emergency_source_mcc_mnc_table" where MCC = '208' AND MNC = '15' AND NUMBER = '116117';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('208','15','116000','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('208','15','116117','','');
DELETE FROM "qcril_emergency_source_mcc_mnc_table" where MCC = '208' AND MNC = '16' AND NUMBER = '116000';
DELETE FROM "qcril_emergency_source_mcc_mnc_table" where MCC = '208' AND MNC = '16' AND NUMBER = '116117';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('208','16','116000','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('208','16','116117','','');

DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" where MCC = '208' AND MNC = '15' AND NUMBER = '116000';
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" where MCC = '208' AND MNC = '15' AND NUMBER = '116117';
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('208','15','116000','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('208','15','116117','','');
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" where MCC = '208' AND MNC = '16' AND NUMBER = '116000';
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" where MCC = '208' AND MNC = '16' AND NUMBER = '116117';
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('208','16','116000','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('208','16','116117','','');

COMMIT TRANSACTION;
