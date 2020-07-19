




CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 contragent VARCHAR(255) NOT NULL,

 descr VARCHARMAX NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN VARCHAR32 NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id VARCHAR128 NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 category VARCHAR32 NOT NULL,

 type VARCHAR32 NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 user_id UUID NOT NULL,

 role_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit VARCHAR32 NULL,

 type_m0 UUID NOT NULL,

 type UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_group (

 primaryKey UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 user_id UUID NOT NULL,

 group_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_resource_spec (

 primaryKey UUID NOT NULL,

 action VARCHAR32 NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state VARCHAR32 NULL,

 name VARCHAR(255) NULL,

 description VARCHARMAX NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum VARCHAR32 NOT NULL,

 category VARCHAR3 NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 parent_id_m0 UUID NOT NULL,

 parent_id UUID NULL,

 cardinality UUID NOT NULL,

 catalog_key UUID NULL,

 cardinality_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 parent_id UUID NULL,

 contragent_id UUID NULL,

 service_spec_id UUID NOT NULL,

 cfs_id_m0 UUID NOT NULL,

 cfs_id UUID NULL,

 state_m0 UUID NOT NULL,

 contragent_id_m0 UUID NOT NULL,

 state UUID NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 customer VARCHAR128 NOT NULL,

 descr VARCHARMAX NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code VARCHAR32 NOT NULL,

 svc VARCHARMAX NOT NULL,

 svc_type VARCHAR32 NULL,

 data_version VARCHAR32 NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr VARCHARMAX NULL,

 vat VARCHAR31 NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure VARCHARMAX NULL,

 measure_key UUID NULL,

 status VARCHAR10 NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 service_spec_id UUID NOT NULL,

 group_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 customer_id UUID NOT NULL,

 group_id UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit VARCHAR32 NULL,

 type_m0 UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 service_id UUID NOT NULL,

 service_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_order (

 primaryKey UUID NOT NULL,

 action VARCHAR32 NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 service_order_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 service_spec_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 external_id VARCHAR128 NULL,

 cfs_id UUID NOT NULL,

 contragent_id UUID NULL,

 cfs_id_m0 UUID NOT NULL,

 resource_shared_id_m0 UUID NOT NULL,

 resource_shared_id UUID NULL,

 resource_spec_id_m0 UUID NOT NULL,

 parent_service_id UUID NULL,

 resource_spec_id UUID NOT NULL,

 parent_id UUID NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_item (

 primaryKey UUID NOT NULL,

 action VARCHAR32 NOT NULL,

 price MONEY NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log VARCHAR1024 NULL,

 clone_service_id_m0 UUID NOT NULL,

 service_id_m0 UUID NOT NULL,

 state UUID NOT NULL,

 clone_service_id UUID NULL,

 modifier_id UUID NULL,

 parent_id UUID NULL,

 creator_id UUID NULL,

 state_m0 UUID NOT NULL,

 service_id UUID NOT NULL,

 service_order_id UUID NOT NULL,

 creator_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_spec (

 primaryKey UUID NOT NULL,

 action VARCHAR32 NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_spec_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec (

 primaryKey UUID NOT NULL,

 enum VARCHAR32 NOT NULL,

 type VARCHAR32 NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 category VARCHAR32 NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 parent_service_spec_id UUID NULL,

 cardinality UUID NOT NULL,

 resource_common_id UUID NULL,

 cardinality_m0 UUID NOT NULL,

 parent_service_spec_id_m0 UUID NOT NULL,

 parent_id UUID NULL,

 resource_common_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password VARBINARY255 NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone VARCHAR32 NULL,

 phone_work VARCHAR32 NULL,

 phone_mobile VARCHAR32 NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo VARCHARMAX NULL,

 thumbnail VARCHARMAX NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name VARCHAR767 NULL,

 short_name VARCHAR261 NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary_value (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 dictionary_id UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description VARCHARMAX NULL,

 external_id VARCHAR128 NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id VARCHAR128 NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHARMAX NULL,

 category VARCHAR32 NOT NULL,

 type VARCHAR32 NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 type UUID NOT NULL,

 resource_spec_id_m0 UUID NOT NULL,

 dictionary_id UUID NULL,

 dictionary_id_m0 UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name VARCHAR32 NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description VARCHARMAX NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price MONEY NOT NULL,

 state_m0 UUID NOT NULL,

 state UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 modifier_id UUID NULL,

 creator_id UUID NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE contragent ADD CONSTRAINT FK15c3df22bfa64d059616212cf3ec8e7d FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE user_role ADD CONSTRAINT FK72b73c83698c4de195b681c3aa7ab2b7 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index6bc9625275e959cb02c513a9272a5966dc61806c on user_role (user_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKcf74d44360a64051ae44e85dfc2c459b FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2a9c9418e6b8be746e65024be120e147c1dec605 on user_role (role_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK15d9901aedf540f68aaf1584bb71cfcd FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Index565a312ab27f494090f2b124999463a5a4f644b2 on service_usage_spec (type_m0); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FKab8fa18d4cd442929d3851f54c1ab991 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexbf60025b832773b4c44ee86404642aaaf9f7d852 on service_usage_spec (type); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FKe73a3548d53f4f53905d0b04c6905f86 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index94a41849a4f7f38bb4cf8fa10fed3bb8a0377f86 on service_usage_spec (service_spec_id); 

 ALTER TABLE user_group ADD CONSTRAINT FKc296f0b0b42a416fb66e83bc093796d0 FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index6349f1b2d4cdd4a84028dd921d0774255b66281e on user_group (group_id_m0); 

 ALTER TABLE user_group ADD CONSTRAINT FK68c8060789bf4b0690f6ad239d1493cd FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index3639d39a97f2dfd5910c71162a3f0e071945035d on user_group (user_id); 

 ALTER TABLE user_group ADD CONSTRAINT FK9139a98de66041cd950ba7cbd0b17f77 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexcd6580cef639b7fbc9c10b5d253462d6454b82ad on user_group (group_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FKd2796cf25ba947e1bf0dd57e0d6c925e FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5482820c7d01cc066da4704dd64f6dcfda3a9049 on user_resource_spec (user_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK06b13163135d42a9a41d1285ea0106a8 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index882cc0a9333fe7cf2169c3b90c6f1d5e5e5502ac on user_resource_spec (resource_spec_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FKbea938d55c3441aca534b757d97de208 FOREIGN KEY (parent_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexd9762e78f8164685915dacc1bad526af0265df83 on service_spec (parent_id_m0); 

 ALTER TABLE service_spec ADD CONSTRAINT FKb382f21ae48e43779e73f7bdd20e0860 FOREIGN KEY (parent_id) REFERENCES service_spec; 
CREATE INDEX Index1dbe53f722bf19cc8ac937962955ad71ae547b2d on service_spec (parent_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FKd507a476caf34827b32e07dd6e248e5f FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Index1cf3df6af1d430be8b55e233c0ee4c0de7ea3efe on service_spec (cardinality); 

 ALTER TABLE service_spec ADD CONSTRAINT FK7e83a2b278e94e7d974138672de5c895 FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Index0787960c394aa8f714c1790d1d279b22bb54dc15 on service_spec (catalog_key); 

 ALTER TABLE service_spec ADD CONSTRAINT FK8646d035ad6d417f9d706a13452e8032 FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Indexbf55a58ac4aa8296204ebeb8bfba538b5be3e3d6 on service_spec (cardinality_m0); 

 ALTER TABLE service ADD CONSTRAINT FK9ab75402701b40748f1013c2ad594bd2 FOREIGN KEY (parent_id) REFERENCES service; 
CREATE INDEX Index7e210cc50475ddd7203177913939fc227b3878d3 on service (parent_id); 

 ALTER TABLE service ADD CONSTRAINT FKc3fc6582cc49452faed19422d0810e14 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index93973badbc81c53e84e78a3e51f903275c68dd3c on service (contragent_id); 

 ALTER TABLE service ADD CONSTRAINT FK92970c6a26b64fc4b1e5c6b06b6d4fae FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FKcf593fde9fca497799daf28d1fbe02df FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexf3616b96a18ccaaa36a8ca2ff725a5898447788e on service (cfs_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK0a0d87c7f92843f3a7af2ebc6415067b FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Indexe73b6065dd1d79e831b898efa458b1bf4d63d86d on service (cfs_id); 

 ALTER TABLE service ADD CONSTRAINT FK2e14025e6131435cbe3500ef804fb2e8 FOREIGN KEY (state_m0) REFERENCES service_state; 
CREATE INDEX Index4c80a1eb3b94ff6b898fcc2dd113428a141171cd on service (state_m0); 

 ALTER TABLE service ADD CONSTRAINT FKaa50da505c8b45b998eaf707ba75e96a FOREIGN KEY (contragent_id_m0) REFERENCES contragent; 
CREATE INDEX Index02fe0274fcc47b88b41a75407dd8d7f446a2ca8e on service (contragent_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK7497fa4a32aa4956a32ea2d8bce502d1 FOREIGN KEY (state) REFERENCES service_state; 
CREATE INDEX Indexa4349a09c5bf567ef22be37b5179751a60a0b4b2 on service (state); 

 ALTER TABLE service ADD CONSTRAINT FK08c37e0a26064c9bba543f8fb7ca330a FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FK3b56ea493dd74d24ab126c21a3dbd173 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Indexe182a8117f4be3d1c7b3fdd0911f197ec91f680d on service_spec_acl (service_spec_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKf7f90a1f02d045f69e8aeb69bf81ddfa FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexc2450435d7ba9d0403022967febad528bf6a3783 on service_spec_acl (group_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FKc4003b24ddeb493b8713ff6378005895 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexaf327e2528c2a6af4b0c4bc08dbfa0ad160c6096 on customer_acl (customer_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK00e0f14fb3f44da4b9117a879876d5e8 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index3c774b8763a5b6cc0915c141be02d8a41ca1c0bf on customer_acl (group_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK8dcf912ff43745738739ffa777e58c59 FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index5d4e1d509e0a2e8c6275226705e0964be595171e on customer_acl (group_id_m0); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK8a77443b25e142f48abd8aa905247d6a FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index6824baf013ec80d61def4e9e79578c0980f0df6f on customer_acl (customer_id_m0); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK4a4aa560ce8a4d629e6f497576d4a178 FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexce3f4c65bf64ec0c3c80e660173d6fb5af410e42 on resource_usage_spec (type_m0); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK911d1329e07f4abc9e881983c8f24ac7 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index80b3b281aee1760f7ee048916b46cf28f0d1d8e2 on resource_usage_spec (resource_spec_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FKd8a6bfe1a2014108a5427e64bb1b562b FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexc7c637bb031a3d56f42f260b975baf289c522bb9 on resource_usage_spec (type); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FK040edb24c08e4944be783588544a17ce FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index9054b19feb9e67a5351481f5dad2bf38a7daebca on service_characteristic (service_id); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FKece80a5ccd8843169b92bc793540b1d1 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index0bf0c898c151c8393269e4126b5ae43a8a627e76 on service_characteristic (service_id_m0); 

 ALTER TABLE user_service_order ADD CONSTRAINT FKa33bae87318d4c07bb24bad1c85a6964 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index70300ae7783ea7aea3f7d8dc569a217f1a27763f on user_service_order (user_id); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK588866c1fefb4d6b950cd933136b8930 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Index6e7e0b8b7307312db51ddec32b886d94ab8c644a on user_service_order (service_order_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK6c71bd92ee7442cc871bb18ac88560d3 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexbd0e0a6bc52cfb2902afebdfa0dcbd0f72e55b4f on service_spec_characteristic (service_spec_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK3cfb325d40b24100987f598872f1a76f FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexe5aecadc625dd4efc2f99af5721ef26f401cd0e3 on service_spec_characteristic (type); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKae8a4a04c93949c8a38b661e0f94b67b FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexf6b833f2993f396f6dc06d872060008df4c46cf7 on service_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKab293957f9824601b4cb6dc2c2a148bd FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index3d8c9657a09cb23f9a9a9b242efa11a510d49ec2 on service_spec_characteristic (service_spec_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK1c866d7939f947e9963084c0374019f6 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexb5b57be8a5cf09f4745407d9ce980a391550c020 on service_spec_characteristic (dictionary_id); 

 ALTER TABLE resource ADD CONSTRAINT FK9d3b44642a944dcdb42743a6cf673190 FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Index8a5a2131e7cd384587ead99931b3c9b718a72a86 on resource (cfs_id); 

 ALTER TABLE resource ADD CONSTRAINT FK0fb1177bda1b4895ab31d7f25b388038 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK2f1b9b50f0b549e7948094bffb625829 FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexaf27ed492fb2cfa79f2582fb53a57ef30779a768 on resource (cfs_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKbada22ebb9644f1eb2b9cf2616522f09 FOREIGN KEY (resource_shared_id_m0) REFERENCES resource_shared; 
CREATE INDEX Index734152b451e699f883fb8366c292beec3c7d7b18 on resource (resource_shared_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FK63234213112a4153875f138cd4d80772 FOREIGN KEY (resource_shared_id) REFERENCES resource_shared; 
CREATE INDEX Index69f9b4538aa9c0941f8da44e85fce3cc8df76657 on resource (resource_shared_id); 

 ALTER TABLE resource ADD CONSTRAINT FKdb2d476272114a04bf25290ec0c2462b FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Indexa8f39fd9a0ec4970aac3f914a54816cd2c925429 on resource (resource_spec_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKd23538ed87dc4b8190a41ff53a5b7b18 FOREIGN KEY (parent_service_id) REFERENCES service; 
CREATE INDEX Indexae380a8db103c708de00ddaef4744b9186f3eb6f on resource (parent_service_id); 

 ALTER TABLE resource ADD CONSTRAINT FK998e848c90114785993eb8db60171aef FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index95907b0d62b8ee280cc466864699b6600f19f2cb on resource (resource_spec_id); 

 ALTER TABLE resource ADD CONSTRAINT FK6a0af13d6f7e4275a1f7cab57bdf2a17 FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK853e5a96457e4c16a0a3209ab175868e FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK0b741d9b53ad4759bb1ac6d447b12b1a FOREIGN KEY (clone_service_id_m0) REFERENCES service; 
CREATE INDEX Index0a705cd48879fb571d86cd39560cd1e49a5ceacc on order_item (clone_service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK7e694a78f35b4a10bb1e4da21b7fa474 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index9ccea8d1c1207a98497624fe8d180eb03fd47c85 on order_item (service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK56aeed7db6044f7f99187e7d502c7f0e FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Index0bbe667a8e4ff00d2973137e9f1608c71d2195b8 on order_item (state); 

 ALTER TABLE order_item ADD CONSTRAINT FKe783f0bfaacd4c038a2197a7cfe1e751 FOREIGN KEY (clone_service_id) REFERENCES service; 
CREATE INDEX Index0ca65ffffc31fb6ea9e75729f36b3ed5523d2e33 on order_item (clone_service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK7d988bbf29604c3787767e0e3d9db221 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index56465c360a56c50d104948f12363d10e36459845 on order_item (modifier_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKeeca36966b7a4f07a10f3d1b1782ed9b FOREIGN KEY (parent_id) REFERENCES order_item; 
CREATE INDEX Index6e26d531accc8ee0c399eafe3054ec9dd56ef7f6 on order_item (parent_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK1410a20e6e7e4ae9a9d41529ac42b055 FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index629d50476c0e5d8241371571f91bfecda2cdd2c9 on order_item (creator_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKfe04baaf47d6457eb253945f3dd796a4 FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index8d7d541c02fd3842cab88234640777370ed3e942 on order_item (state_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FKa24755a0fc8b4ed88fd1329b69af249d FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index809eace3ee97f6d925cdcd669295ad9b3387b9b4 on order_item (service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK910631c8203e40548be4c949f316d152 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Indexec6177ef296615bae6a93c849f11f9a958b12716 on order_item (service_order_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKb0e9733886e740e19a3a9d5c91a7af82 FOREIGN KEY (creator_id_m0) REFERENCES usr; 
CREATE INDEX Index99043f1ffd6f4e814224d295aa21bf8233c08e5a on order_item (creator_id_m0); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FK33b3091a634e485286b59a3c64a7aee7 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index93831155d2bedac1a8df2d16a1694c5571cfcc90 on user_service_spec (service_spec_id); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FKbf0af2e657ab43a5982d8a8c9226559f FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index71df8ee96e12de1d453119693217a230a83437f6 on user_service_spec (user_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK68fdebc38c6b4c5cbaa62bd6f23a17c9 FOREIGN KEY (parent_service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index888d1957c11f9037c0e91396fd922bf6224ae0e6 on resource_spec (parent_service_spec_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKb34a9f8c517a4b748686ef052434807b FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Indexb846adf318dfb6a1fd4885f89dbce5c6039bd500 on resource_spec (cardinality); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK50ac0e505c7e45ffbd31ee3292c5b952 FOREIGN KEY (resource_common_id) REFERENCES resource_common; 
CREATE INDEX Indexc64ab9ecbb0144bd87f4a1218889927d483ab2dd on resource_spec (resource_common_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK1e1572dd45e84432a5ae706fd5642249 FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Index7221e0377e9a9073e6d389733493de9364e96ce2 on resource_spec (cardinality_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK631ff8c769ab480393dce4c5542046bb FOREIGN KEY (parent_service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexdfe3de3f8f6cd46ed48d7d9dd6c4e519273ca3a3 on resource_spec (parent_service_spec_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKbb95af8c74de40dabfdae9d3250e68df FOREIGN KEY (parent_id) REFERENCES resource_spec; 
CREATE INDEX Index111e380e8fb7eadfdfa87d469b6251099fb70299 on resource_spec (parent_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK3c9c884501b145c3859a6d3bc52efadd FOREIGN KEY (resource_common_id_m0) REFERENCES resource_common; 
CREATE INDEX Indexf8ee2ea7c3e629838d88ee66a0c35d559e3c046a on resource_spec (resource_common_id_m0); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FKcdfc04c6db2f41f2bdb513fd1b8c114e FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index708041deac38faac3e07a74677612a6c5f40c467 on dictionary_value (dictionary_id); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FKd473b3c5ba3a454a904614db62a7b23e FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexec9200d62ac4b3e687fbba5591a5af7a2b32900a on dictionary_value (dictionary_id_m0); 

 ALTER TABLE dba ADD CONSTRAINT FKdbc1fabd77ba4cccb2626bc6106747b8 FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FKac83150bd1dd42878ccbf9cde4c57da9 FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Indexccafd08e6e0a968a8d2f21cdabef3e11f9d0f440 on resource_characteristic (resource_id); 

 ALTER TABLE resource_shared ADD CONSTRAINT FK98bd757d2ae64695b6782773c11b18c4 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexc63538dbeba556af23be9627a81abd9902cebabe on resource_shared (customer_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK345ae2ca63b04f03bd66e80daa937a28 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Index99cd49bc2c60e29e0cfac8787303472c269f18e4 on resource_spec_characteristic (type); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK726acebefa624669bf3af2a4e161dcf4 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Index35867bb524cf3d04af07e8d1c4506a69492aa26b on resource_spec_characteristic (resource_spec_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKd843a5cfbdce4688a19d94d57963f685 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexf91f345bc7342e04c4ca4353bad85dce739f27e9 on resource_spec_characteristic (dictionary_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK585f95ec382d4074aee0362ceb5af149 FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexa6dbd5b460e1215db616fd55c4d70bc2ed224420 on resource_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK79456849b4034559adc6635b27763690 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index9bb9374e066aa27efaec5d41418b4e4d7d9d9bf5 on resource_spec_characteristic (resource_spec_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKcc1c447e3c43401891c40a3232ae0a5c FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index075891f1945d5c6f4c7d7eaa185a657f70f9213a on service_order (state_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK52fe45a8327f427a89c3007cc5471330 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Indexfc9c3e03783402ea95174e160234c9fb2cee5599 on service_order (state); 

 ALTER TABLE service_order ADD CONSTRAINT FKed41f6eff4f640c0952c960f96e927ac FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index1f482d93e8f0a434b4410cae2d8a035225389d9b on service_order (customer_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK70e832c41448436b938edab23e1b4eb2 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index9dffa9017dd697b1cc70ebf509289586406f35ea on service_order (contragent_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK0d4d9eb4a5d14a9aa46f82317d8f82df FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index7b095fe8098e6c396ead41ddcf49daae97420c06 on service_order (modifier_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKb8927e159023483db163154ddc06602d FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index0993ff331ce49a9fcfbbbe6a28ca46b675b4a516 on service_order (creator_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK833a27d42c1e44e3b882bc0ee4453f69 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index8d595c1ef9ce59d249ef06bdabcff71c4ab04467 on service_order (customer_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKadb0ba47ea6c431f91436a46f46c295b FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKcad92871565f415b8414a445bde1793f FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK214c472015304f89998985f8484f5829 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

