



CREATE TABLE [contragent] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent] VARCHAR(255)  NOT NULL,

	 [descr] varchar(max)  NULL,

	 [official_name] VARCHAR(255)  NULL,

	 [creator_id] INT  NULL,

	 [modifier_id] INT  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [INN] varchar(32)  NULL,

	 [guid1c] uniqueidentifier  NULL,

	 [archive] BIT  NULL,

	 [dt_archive] DATETIME  NULL,

	 [archiver_id] INT  NULL,

	 [archive_reason_id] INT  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_common] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_role] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [role_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_usage_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NOT NULL,

	 [unit] varchar(32)  NULL,

	 [type_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [product_catalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [spec_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [version] INT  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_group] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_resource_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id] INT  NOT NULL,

	 [cfs_id] INT  NULL,

	 [parent_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [service_spec_id] INT  NULL,

	 [state] varchar(32)  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NULL,

	 [dt_started] DATETIME  NULL,

	 [dt_ended] DATETIME  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_characteristic_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_characteristic_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id] INT  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [version] INT  NOT NULL,

	 [enum] varchar(32)  NOT NULL,

	 [category] varchar(3)  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [parent_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [cardinality] UNIQUEIDENTIFIER  NOT NULL,

	 [catalog_key] UNIQUEIDENTIFIER  NULL,

	 [cardinality_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_started] DATETIME  NULL,

	 [dt_ended] DATETIME  NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [cfs_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [cfs_id] UNIQUEIDENTIFIER  NULL,

	 [state_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [state] UNIQUEIDENTIFIER  NOT NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [customer] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [customer] varchar(128)  NOT NULL,

	 [descr] varchar(max)  NULL,

	 [service_manager_id] INT  NULL,

	 [creator_id] INT  NULL,

	 [modifier_id] INT  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [archive] BIT  NOT NULL,

	 [dt_archive] DATETIME  NULL,

	 [archiver_id] INT  NULL,

	 [archive_reason_id] INT  NULL,

	 [internal] BIT  NOT NULL,

	 [telco] BIT  NOT NULL,

	 [office] BIT  NOT NULL,

	 [barrier] BIT  NOT NULL,

	 [pci_dss] BIT  NULL,

	 [federal_low_152] BIT  NULL,

	 [account_manager_id] INT  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [catalog] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [code] varchar(32)  NOT NULL,

	 [svc] varchar(max)  NOT NULL,

	 [svc_type] varchar(32)  NULL,

	 [data_version] varchar(32)  NULL,

	 [dt_sync] DATETIME  NULL,

	 [descr] varchar(max)  NULL,

	 [vat] varchar(31)  NULL,

	 [is_actual] BIT  NOT NULL,

	 [dt_creation] DATETIME  NULL,

	 [parent_key] uniqueidentifier  NULL,

	 [measure] varchar(max)  NULL,

	 [measure_key] uniqueidentifier  NULL,

	 [status] varchar(10)  NULL,

	 [formula_key] uniqueidentifier  NULL,

	 [billing_object_type_guid] uniqueidentifier  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec_acl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NOT NULL,

	 [a_read] BIT  NOT NULL,

	 [a_update] BIT  NOT NULL,

	 [a_delete] BIT  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [customer_acl] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [a_create] BIT  NOT NULL,

	 [a_read] BIT  NOT NULL,

	 [a_update] BIT  NOT NULL,

	 [a_delete] BIT  NOT NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id] UNIQUEIDENTIFIER  NOT NULL,

	 [group_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [customer_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_usage_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [map] BIT  NOT NULL,

	 [unit] varchar(32)  NULL,

	 [type_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [service_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_service_order] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_order_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_state] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_spec_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NOT NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [external_id] varchar(128)  NULL,

	 [cfs_id] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [cfs_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_shared_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_shared_id] UNIQUEIDENTIFIER  NULL,

	 [resource_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_service_id] UNIQUEIDENTIFIER  NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [order_state] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [order_item] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [price] money  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [log] varchar(1024)  NULL,

	 [clone_service_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [state] UNIQUEIDENTIFIER  NOT NULL,

	 [clone_service_id] UNIQUEIDENTIFIER  NULL,

	 [modifier_id] UNIQUEIDENTIFIER  NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [creator_id] UNIQUEIDENTIFIER  NULL,

	 [state_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [service_id] UNIQUEIDENTIFIER  NOT NULL,

	 [service_order_id] UNIQUEIDENTIFIER  NOT NULL,

	 [creator_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [cardinality_type] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [grp] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 [imported] BIT  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [user_service_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [action] varchar(32)  NOT NULL,

	 [dt_action] DATETIME  NOT NULL,

	 [service_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 [user_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [characteristic_type] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [regex] VARCHAR(255)  NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_spec] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [enum] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [existent] BIT  NOT NULL,

	 [shared] BIT  NOT NULL,

	 [version] INT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [parent_service_spec_id] UNIQUEIDENTIFIER  NULL,

	 [cardinality] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_common_id] UNIQUEIDENTIFIER  NULL,

	 [cardinality_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_service_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [parent_id] UNIQUEIDENTIFIER  NULL,

	 [resource_common_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [usr] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [login] VARCHAR(255)  NOT NULL,

	 [password] varbinary(255)  NULL,

	 [locked] BIT  NOT NULL,

	 [email] VARCHAR(255)  NOT NULL,

	 [domain] VARCHAR(255)  NULL,

	 [last_name] VARCHAR(255)  NOT NULL,

	 [first_name] VARCHAR(255)  NULL,

	 [middle_name] VARCHAR(255)  NULL,

	 [phone] varchar(32)  NULL,

	 [phone_work] varchar(32)  NULL,

	 [phone_mobile] varchar(32)  NULL,

	 [position] VARCHAR(255)  NULL,

	 [department] VARCHAR(255)  NULL,

	 [photo] varchar(max)  NULL,

	 [thumbnail] varchar(max)  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_locked] DATETIME  NULL,

	 [dt_modified] DATETIME  NULL,

	 [dt_lastlogin] DATETIME  NULL,

	 [full_name] varchar(767)  NULL,

	 [short_name] varchar(261)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dictionary_value] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dba] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [dt_upgrade] DATETIME  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 [script] VARCHAR(255)  NOT NULL,

	 [prev_version] UNIQUEIDENTIFIER  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [resource_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_id] INT  NOT NULL,

	 [parent_id] INT  NULL,

	 [cfs_id] INT  NULL,

	 [parent_service_id] INT  NULL,

	 [resource_shared_id] INT  NULL,

	 [contragent_id] INT  NULL,

	 [customer_id] INT  NULL,

	 [resource_spec_id] INT  NULL,

	 [name] VARCHAR(255)  NULL,

	 [description] varchar(max)  NULL,

	 [external_id] varchar(128)  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_shared] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [external_id] varchar(128)  NULL,

	 [existent] BIT  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [description] varchar(max)  NULL,

	 [category] varchar(32)  NOT NULL,

	 [type] varchar(32)  NOT NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [resource_spec_characteristic] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 [value] VARCHAR(255)  NULL,

	 [can_be_overridden] BIT  NOT NULL,

	 [label] VARCHAR(255)  NULL,

	 [list] INT  NULL,

	 [type] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [dictionary_id] UNIQUEIDENTIFIER  NULL,

	 [dictionary_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [resource_spec_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [dictionary] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] VARCHAR(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_characteristic_log] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [service_characteristic_id] INT  NOT NULL,

	 [name] VARCHAR(255)  NULL,

	 [value] VARCHAR(255)  NULL,

	 [service_id] INT  NULL,

	 [start_time] DATETIME  NOT NULL,

	 [end_time] DATETIME  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [role] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [name] varchar(32)  NOT NULL,

	 [description] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [service_order] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [description] varchar(max)  NULL,

	 [dt_completed] DATETIME  NULL,

	 [dt_created] DATETIME  NOT NULL,

	 [dt_modified] DATETIME  NOT NULL,

	 [dt_started] DATETIME  NULL,

	 [external_id] uniqueidentifier  NULL,

	 [price] money  NOT NULL,

	 [state_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [state] UNIQUEIDENTIFIER  NOT NULL,

	 [customer_id_m0] UNIQUEIDENTIFIER  NOT NULL,

	 [contragent_id] UNIQUEIDENTIFIER  NULL,

	 [modifier_id] UNIQUEIDENTIFIER  NULL,

	 [creator_id] UNIQUEIDENTIFIER  NULL,

	 [customer_id] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [contragent] ADD CONSTRAINT [contragent_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX contragent_Icustomer_id on [contragent] ([customer_id])

 ALTER TABLE [user_role] ADD CONSTRAINT [user_role_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX user_role_Iuser_id on [user_role] ([user_id])

 ALTER TABLE [user_role] ADD CONSTRAINT [user_role_Frole_0] FOREIGN KEY ([role_id]) REFERENCES [role]
CREATE INDEX user_role_Irole_id on [user_role] ([role_id])

 ALTER TABLE [service_usage_spec] ADD CONSTRAINT [service_usage_spec_Fcharacteristic_type_0] FOREIGN KEY ([type_m0]) REFERENCES [characteristic_type]
CREATE INDEX service_usage_spec_Itype_m0 on [service_usage_spec] ([type_m0])

 ALTER TABLE [service_usage_spec] ADD CONSTRAINT [service_usage_spec_Fcharacteristic_type_1] FOREIGN KEY ([type]) REFERENCES [characteristic_type]
CREATE INDEX service_usage_spec_Itype on [service_usage_spec] ([type])

 ALTER TABLE [service_usage_spec] ADD CONSTRAINT [service_usage_spec_Fservice_spec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [service_spec]
CREATE INDEX service_usage_spec_Iservice_spec_id on [service_usage_spec] ([service_spec_id])

 ALTER TABLE [user_group] ADD CONSTRAINT [user_group_Fgrp_0] FOREIGN KEY ([group_id_m0]) REFERENCES [grp]
CREATE INDEX user_group_Igroup_id_m0 on [user_group] ([group_id_m0])

 ALTER TABLE [user_group] ADD CONSTRAINT [user_group_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX user_group_Iuser_id on [user_group] ([user_id])

 ALTER TABLE [user_group] ADD CONSTRAINT [user_group_Fgrp_1] FOREIGN KEY ([group_id]) REFERENCES [grp]
CREATE INDEX user_group_Igroup_id on [user_group] ([group_id])

 ALTER TABLE [user_resource_spec] ADD CONSTRAINT [user_resource_spec_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX user_resource_spec_Iuser_id on [user_resource_spec] ([user_id])

 ALTER TABLE [user_resource_spec] ADD CONSTRAINT [user_resource_spec_Fresource_spec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resource_spec]
CREATE INDEX user_resource_spec_Iresource_spec_id on [user_resource_spec] ([resource_spec_id])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fservice_spec_0] FOREIGN KEY ([parent_id_m0]) REFERENCES [service_spec]
CREATE INDEX service_spec_Iparent_id_m0 on [service_spec] ([parent_id_m0])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fservice_spec_1] FOREIGN KEY ([parent_id]) REFERENCES [service_spec]
CREATE INDEX service_spec_Iparent_id on [service_spec] ([parent_id])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fcardinality_type_0] FOREIGN KEY ([cardinality]) REFERENCES [cardinality_type]
CREATE INDEX service_spec_Icardinality on [service_spec] ([cardinality])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fcatalog_0] FOREIGN KEY ([catalog_key]) REFERENCES [catalog]
CREATE INDEX service_spec_Icatalog_key on [service_spec] ([catalog_key])

 ALTER TABLE [service_spec] ADD CONSTRAINT [service_spec_Fcardinality_type_1] FOREIGN KEY ([cardinality_m0]) REFERENCES [cardinality_type]
CREATE INDEX service_spec_Icardinality_m0 on [service_spec] ([cardinality_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_0] FOREIGN KEY ([parent_id]) REFERENCES [service]
CREATE INDEX service_Iparent_id on [service] ([parent_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX service_Icontragent_id on [service] ([contragent_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_spec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [service_spec]
CREATE INDEX service_Iservice_spec_id on [service] ([service_spec_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_1] FOREIGN KEY ([cfs_id_m0]) REFERENCES [service]
CREATE INDEX service_Icfs_id_m0 on [service] ([cfs_id_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_2] FOREIGN KEY ([cfs_id]) REFERENCES [service]
CREATE INDEX service_Icfs_id on [service] ([cfs_id])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_state_0] FOREIGN KEY ([state_m0]) REFERENCES [service_state]
CREATE INDEX service_Istate_m0 on [service] ([state_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fcontragent_1] FOREIGN KEY ([contragent_id_m0]) REFERENCES [contragent]
CREATE INDEX service_Icontragent_id_m0 on [service] ([contragent_id_m0])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fservice_state_1] FOREIGN KEY ([state]) REFERENCES [service_state]
CREATE INDEX service_Istate on [service] ([state])

 ALTER TABLE [service] ADD CONSTRAINT [service_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX service_Icustomer_id on [service] ([customer_id])

 ALTER TABLE [service_spec_acl] ADD CONSTRAINT [service_spec_acl_Fservice_spec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [service_spec]
CREATE INDEX service_spec_acl_Iservice_spec_id on [service_spec_acl] ([service_spec_id])

 ALTER TABLE [service_spec_acl] ADD CONSTRAINT [service_spec_acl_Fgrp_0] FOREIGN KEY ([group_id]) REFERENCES [grp]
CREATE INDEX service_spec_acl_Igroup_id on [service_spec_acl] ([group_id])

 ALTER TABLE [customer_acl] ADD CONSTRAINT [customer_acl_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX customer_acl_Icustomer_id on [customer_acl] ([customer_id])

 ALTER TABLE [customer_acl] ADD CONSTRAINT [customer_acl_Fgrp_0] FOREIGN KEY ([group_id]) REFERENCES [grp]
CREATE INDEX customer_acl_Igroup_id on [customer_acl] ([group_id])

 ALTER TABLE [customer_acl] ADD CONSTRAINT [customer_acl_Fgrp_1] FOREIGN KEY ([group_id_m0]) REFERENCES [grp]
CREATE INDEX customer_acl_Igroup_id_m0 on [customer_acl] ([group_id_m0])

 ALTER TABLE [customer_acl] ADD CONSTRAINT [customer_acl_Fcustomer_1] FOREIGN KEY ([customer_id_m0]) REFERENCES [customer]
CREATE INDEX customer_acl_Icustomer_id_m0 on [customer_acl] ([customer_id_m0])

 ALTER TABLE [resource_usage_spec] ADD CONSTRAINT [resource_usage_spec_Fcharacteristic_type_0] FOREIGN KEY ([type_m0]) REFERENCES [characteristic_type]
CREATE INDEX resource_usage_spec_Itype_m0 on [resource_usage_spec] ([type_m0])

 ALTER TABLE [resource_usage_spec] ADD CONSTRAINT [resource_usage_spec_Fresource_spec_0] FOREIGN KEY ([resource_spec_id]) REFERENCES [resource_spec]
CREATE INDEX resource_usage_spec_Iresource_spec_id on [resource_usage_spec] ([resource_spec_id])

 ALTER TABLE [resource_usage_spec] ADD CONSTRAINT [resource_usage_spec_Fcharacteristic_type_1] FOREIGN KEY ([type]) REFERENCES [characteristic_type]
CREATE INDEX resource_usage_spec_Itype on [resource_usage_spec] ([type])

 ALTER TABLE [service_characteristic] ADD CONSTRAINT [service_characteristic_Fservice_0] FOREIGN KEY ([service_id]) REFERENCES [service]
CREATE INDEX service_characteristic_Iservice_id on [service_characteristic] ([service_id])

 ALTER TABLE [service_characteristic] ADD CONSTRAINT [service_characteristic_Fservice_1] FOREIGN KEY ([service_id_m0]) REFERENCES [service]
CREATE INDEX service_characteristic_Iservice_id_m0 on [service_characteristic] ([service_id_m0])

 ALTER TABLE [user_service_order] ADD CONSTRAINT [user_service_order_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX user_service_order_Iuser_id on [user_service_order] ([user_id])

 ALTER TABLE [user_service_order] ADD CONSTRAINT [user_service_order_Fservice_order_0] FOREIGN KEY ([service_order_id]) REFERENCES [service_order]
CREATE INDEX user_service_order_Iservice_order_id on [user_service_order] ([service_order_id])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fservice_spec_0] FOREIGN KEY ([service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX service_spec_characteristic_Iservice_spec_id_m0 on [service_spec_characteristic] ([service_spec_id_m0])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fcharacteristic_type_0] FOREIGN KEY ([type]) REFERENCES [characteristic_type]
CREATE INDEX service_spec_characteristic_Itype on [service_spec_characteristic] ([type])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fdictionary_0] FOREIGN KEY ([dictionary_id_m0]) REFERENCES [dictionary]
CREATE INDEX service_spec_characteristic_Idictionary_id_m0 on [service_spec_characteristic] ([dictionary_id_m0])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fservice_spec_1] FOREIGN KEY ([service_spec_id]) REFERENCES [service_spec]
CREATE INDEX service_spec_characteristic_Iservice_spec_id on [service_spec_characteristic] ([service_spec_id])

 ALTER TABLE [service_spec_characteristic] ADD CONSTRAINT [service_spec_characteristic_Fdictionary_1] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX service_spec_characteristic_Idictionary_id on [service_spec_characteristic] ([dictionary_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fservice_0] FOREIGN KEY ([cfs_id]) REFERENCES [service]
CREATE INDEX resource_Icfs_id on [resource] ([cfs_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX resource_Icontragent_id on [resource] ([contragent_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fservice_1] FOREIGN KEY ([cfs_id_m0]) REFERENCES [service]
CREATE INDEX resource_Icfs_id_m0 on [resource] ([cfs_id_m0])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_shared_0] FOREIGN KEY ([resource_shared_id_m0]) REFERENCES [resource_shared]
CREATE INDEX resource_Iresource_shared_id_m0 on [resource] ([resource_shared_id_m0])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_shared_1] FOREIGN KEY ([resource_shared_id]) REFERENCES [resource_shared]
CREATE INDEX resource_Iresource_shared_id on [resource] ([resource_shared_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_spec_0] FOREIGN KEY ([resource_spec_id_m0]) REFERENCES [resource_spec]
CREATE INDEX resource_Iresource_spec_id_m0 on [resource] ([resource_spec_id_m0])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fservice_2] FOREIGN KEY ([parent_service_id]) REFERENCES [service]
CREATE INDEX resource_Iparent_service_id on [resource] ([parent_service_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_spec_1] FOREIGN KEY ([resource_spec_id]) REFERENCES [resource_spec]
CREATE INDEX resource_Iresource_spec_id on [resource] ([resource_spec_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fresource_0] FOREIGN KEY ([parent_id]) REFERENCES [resource]
CREATE INDEX resource_Iparent_id on [resource] ([parent_id])

 ALTER TABLE [resource] ADD CONSTRAINT [resource_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX resource_Icustomer_id on [resource] ([customer_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_0] FOREIGN KEY ([clone_service_id_m0]) REFERENCES [service]
CREATE INDEX order_item_Iclone_service_id_m0 on [order_item] ([clone_service_id_m0])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_1] FOREIGN KEY ([service_id_m0]) REFERENCES [service]
CREATE INDEX order_item_Iservice_id_m0 on [order_item] ([service_id_m0])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Forder_state_0] FOREIGN KEY ([state]) REFERENCES [order_state]
CREATE INDEX order_item_Istate on [order_item] ([state])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_2] FOREIGN KEY ([clone_service_id]) REFERENCES [service]
CREATE INDEX order_item_Iclone_service_id on [order_item] ([clone_service_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fusr_0] FOREIGN KEY ([modifier_id]) REFERENCES [usr]
CREATE INDEX order_item_Imodifier_id on [order_item] ([modifier_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Forder_item_0] FOREIGN KEY ([parent_id]) REFERENCES [order_item]
CREATE INDEX order_item_Iparent_id on [order_item] ([parent_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fusr_1] FOREIGN KEY ([creator_id]) REFERENCES [usr]
CREATE INDEX order_item_Icreator_id on [order_item] ([creator_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Forder_state_1] FOREIGN KEY ([state_m0]) REFERENCES [order_state]
CREATE INDEX order_item_Istate_m0 on [order_item] ([state_m0])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_3] FOREIGN KEY ([service_id]) REFERENCES [service]
CREATE INDEX order_item_Iservice_id on [order_item] ([service_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fservice_order_0] FOREIGN KEY ([service_order_id]) REFERENCES [service_order]
CREATE INDEX order_item_Iservice_order_id on [order_item] ([service_order_id])

 ALTER TABLE [order_item] ADD CONSTRAINT [order_item_Fusr_2] FOREIGN KEY ([creator_id_m0]) REFERENCES [usr]
CREATE INDEX order_item_Icreator_id_m0 on [order_item] ([creator_id_m0])

 ALTER TABLE [user_service_spec] ADD CONSTRAINT [user_service_spec_Fservice_spec_0] FOREIGN KEY ([service_spec_id]) REFERENCES [service_spec]
CREATE INDEX user_service_spec_Iservice_spec_id on [user_service_spec] ([service_spec_id])

 ALTER TABLE [user_service_spec] ADD CONSTRAINT [user_service_spec_Fusr_0] FOREIGN KEY ([user_id]) REFERENCES [usr]
CREATE INDEX user_service_spec_Iuser_id on [user_service_spec] ([user_id])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fservice_spec_0] FOREIGN KEY ([parent_service_spec_id]) REFERENCES [service_spec]
CREATE INDEX resource_spec_Iparent_service_spec_id on [resource_spec] ([parent_service_spec_id])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fcardinality_type_0] FOREIGN KEY ([cardinality]) REFERENCES [cardinality_type]
CREATE INDEX resource_spec_Icardinality on [resource_spec] ([cardinality])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fresource_common_0] FOREIGN KEY ([resource_common_id]) REFERENCES [resource_common]
CREATE INDEX resource_spec_Iresource_common_id on [resource_spec] ([resource_common_id])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fcardinality_type_1] FOREIGN KEY ([cardinality_m0]) REFERENCES [cardinality_type]
CREATE INDEX resource_spec_Icardinality_m0 on [resource_spec] ([cardinality_m0])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fservice_spec_1] FOREIGN KEY ([parent_service_spec_id_m0]) REFERENCES [service_spec]
CREATE INDEX resource_spec_Iparent_service_spec_id_m0 on [resource_spec] ([parent_service_spec_id_m0])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fresource_spec_0] FOREIGN KEY ([parent_id]) REFERENCES [resource_spec]
CREATE INDEX resource_spec_Iparent_id on [resource_spec] ([parent_id])

 ALTER TABLE [resource_spec] ADD CONSTRAINT [resource_spec_Fresource_common_1] FOREIGN KEY ([resource_common_id_m0]) REFERENCES [resource_common]
CREATE INDEX resource_spec_Iresource_common_id_m0 on [resource_spec] ([resource_common_id_m0])

 ALTER TABLE [dictionary_value] ADD CONSTRAINT [dictionary_value_Fdictionary_0] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX dictionary_value_Idictionary_id on [dictionary_value] ([dictionary_id])

 ALTER TABLE [dictionary_value] ADD CONSTRAINT [dictionary_value_Fdictionary_1] FOREIGN KEY ([dictionary_id_m0]) REFERENCES [dictionary]
CREATE INDEX dictionary_value_Idictionary_id_m0 on [dictionary_value] ([dictionary_id_m0])

 ALTER TABLE [dba] ADD CONSTRAINT [dba_Fdba_0] FOREIGN KEY ([prev_version]) REFERENCES [dba]
CREATE INDEX dba_Iprev_version on [dba] ([prev_version])

 ALTER TABLE [resource_characteristic] ADD CONSTRAINT [resource_characteristic_Fresource_0] FOREIGN KEY ([resource_id]) REFERENCES [resource]
CREATE INDEX resource_characteristic_Iresource_id on [resource_characteristic] ([resource_id])

 ALTER TABLE [resource_shared] ADD CONSTRAINT [resource_shared_Fcustomer_0] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX resource_shared_Icustomer_id on [resource_shared] ([customer_id])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fcharacteristic_type_0] FOREIGN KEY ([type]) REFERENCES [characteristic_type]
CREATE INDEX resource_spec_characteristic_Itype on [resource_spec_characteristic] ([type])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fresource_spec_0] FOREIGN KEY ([resource_spec_id_m0]) REFERENCES [resource_spec]
CREATE INDEX resource_spec_characteristic_Iresource_spec_id_m0 on [resource_spec_characteristic] ([resource_spec_id_m0])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fdictionary_0] FOREIGN KEY ([dictionary_id]) REFERENCES [dictionary]
CREATE INDEX resource_spec_characteristic_Idictionary_id on [resource_spec_characteristic] ([dictionary_id])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fdictionary_1] FOREIGN KEY ([dictionary_id_m0]) REFERENCES [dictionary]
CREATE INDEX resource_spec_characteristic_Idictionary_id_m0 on [resource_spec_characteristic] ([dictionary_id_m0])

 ALTER TABLE [resource_spec_characteristic] ADD CONSTRAINT [resource_spec_characteristic_Fresource_spec_1] FOREIGN KEY ([resource_spec_id]) REFERENCES [resource_spec]
CREATE INDEX resource_spec_characteristic_Iresource_spec_id on [resource_spec_characteristic] ([resource_spec_id])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Forder_state_0] FOREIGN KEY ([state_m0]) REFERENCES [order_state]
CREATE INDEX service_order_Istate_m0 on [service_order] ([state_m0])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Forder_state_1] FOREIGN KEY ([state]) REFERENCES [order_state]
CREATE INDEX service_order_Istate on [service_order] ([state])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fcustomer_0] FOREIGN KEY ([customer_id_m0]) REFERENCES [customer]
CREATE INDEX service_order_Icustomer_id_m0 on [service_order] ([customer_id_m0])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fcontragent_0] FOREIGN KEY ([contragent_id]) REFERENCES [contragent]
CREATE INDEX service_order_Icontragent_id on [service_order] ([contragent_id])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fusr_0] FOREIGN KEY ([modifier_id]) REFERENCES [usr]
CREATE INDEX service_order_Imodifier_id on [service_order] ([modifier_id])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fusr_1] FOREIGN KEY ([creator_id]) REFERENCES [usr]
CREATE INDEX service_order_Icreator_id on [service_order] ([creator_id])

 ALTER TABLE [service_order] ADD CONSTRAINT [service_order_Fcustomer_1] FOREIGN KEY ([customer_id]) REFERENCES [customer]
CREATE INDEX service_order_Icustomer_id on [service_order] ([customer_id])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

