drop table 	LOGMNR_SESSION_EVOLVE$	cascade constraints;
drop table 	LOGMNR_GLOBAL$	cascade constraints;
drop table 	LOGMNR_PDB_INFO$	cascade constraints;
drop table 	LOGMNR_DID$	cascade constraints;
drop table 	LOGMNR_UID$	cascade constraints;
drop table 	LOGMNRGGC_GTLO	cascade constraints;
drop table 	LOGMNRGGC_GTCS	cascade constraints;
drop table 	LOGMNRC_DBNAME_UID_MAP	cascade constraints;
drop table 	LOGMNR_LOG$	cascade constraints;
drop table 	LOGMNR_PROCESSED_LOG$	cascade constraints;
drop table 	LOGMNR_SPILL$	cascade constraints;
drop table 	LOGMNR_AGE_SPILL$	cascade constraints;
drop table 	LOGMNR_RESTART_CKPT_TXINFO$	cascade constraints;
drop table 	LOGMNR_ERROR$	cascade constraints;
drop table 	LOGMNR_RESTART_CKPT$	cascade constraints;
drop table 	LOGMNR_FILTER$	cascade constraints;
drop table 	LOGMNR_SESSION_ACTIONS$	cascade constraints;
drop table 	LOGMNR_PARAMETER$	cascade constraints;
drop table 	LOGMNR_SESSION$	cascade constraints;
drop table 	LOGMNR_PROFILE_TABLE_STATS$	cascade constraints;
drop table 	LOGMNR_PROFILE_PLSQL_STATS$	cascade constraints;
drop table 	REDO_DB	cascade constraints;
drop table 	REDO_LOG	cascade constraints;
drop table 	ROLLING$CONNECTIONS	cascade constraints;
drop table 	ROLLING$DATABASES	cascade constraints;
drop table 	ROLLING$DIRECTIVES	cascade constraints;
drop table 	ROLLING$EVENTS	cascade constraints;
drop table 	ROLLING$PARAMETERS	cascade constraints;
drop table 	ROLLING$PLAN	cascade constraints;
drop table 	ROLLING$STATISTICS	cascade constraints;
drop table 	ROLLING$STATUS	cascade constraints;
drop table 	MVIEW$_ADV_WORKLOAD	cascade constraints;
drop table 	MVIEW$_ADV_BASETABLE	cascade constraints;
drop table 	MVIEW$_ADV_SQLDEPEND	cascade constraints;
drop table 	MVIEW$_ADV_PRETTY	cascade constraints;
drop table 	MVIEW$_ADV_TEMP	cascade constraints;
drop table 	MVIEW$_ADV_FILTER	cascade constraints;
drop table 	MVIEW$_ADV_LOG	cascade constraints;
drop table 	MVIEW$_ADV_FILTERINSTANCE	cascade constraints;
drop table 	MVIEW$_ADV_LEVEL	cascade constraints;
drop table 	MVIEW$_ADV_ROLLUP	cascade constraints;
drop table 	MVIEW$_ADV_AJG	cascade constraints;
drop table 	MVIEW$_ADV_FJG	cascade constraints;
drop table 	MVIEW$_ADV_GC	cascade constraints;
drop table 	MVIEW$_ADV_CLIQUE	cascade constraints;
drop table 	MVIEW$_ADV_ELIGIBLE	cascade constraints;
drop table 	MVIEW$_ADV_OUTPUT	cascade constraints;
drop table 	MVIEW$_ADV_EXCEPTIONS	cascade constraints;
drop table 	MVIEW$_ADV_PARAMETERS	cascade constraints;
drop table 	MVIEW$_ADV_INFO	cascade constraints;
drop table 	MVIEW$_ADV_JOURNAL	cascade constraints;
drop table 	MVIEW$_ADV_PLAN	cascade constraints;
drop table 	AQ$_QUEUE_TABLES	cascade constraints;
drop table 	AQ$_KEY_SHARD_MAP	cascade constraints;
drop table 	AQ$_QUEUES	cascade constraints;
drop table 	AQ$_SCHEDULES	cascade constraints;
drop table 	AQ$_INTERNET_AGENTS	cascade constraints;
drop table 	AQ$_INTERNET_AGENT_PRIVS	cascade constraints;
drop table 	SCHEDULER_PROGRAM_ARGS_TBL	cascade constraints;
drop table 	SCHEDULER_JOB_ARGS_TBL	cascade constraints;
drop table 	LOGSTDBY$PARAMETERS	cascade constraints;
drop table 	LOGSTDBY$EVENTS	cascade constraints;
drop table 	LOGSTDBY$APPLY_MILESTONE	cascade constraints;
drop table 	LOGSTDBY$SCN	cascade constraints;
drop table 	LOGSTDBY$FLASHBACK_SCN	cascade constraints;
drop table 	LOGSTDBY$PLSQL	cascade constraints;
drop table 	LOGSTDBY$SKIP_TRANSACTION	cascade constraints;
drop table 	LOGSTDBY$SKIP	cascade constraints;
drop table 	LOGSTDBY$SKIP_SUPPORT	cascade constraints;
drop table 	LOGSTDBY$HISTORY	cascade constraints;
drop table 	LOGSTDBY$EDS_TABLES	cascade constraints;
drop table 	SQLPLUS_PRODUCT_PROFILE	cascade constraints;
drop table 	HELP	cascade constraints;
drop table 	TEST	cascade constraints;
drop table 	APPROLE	cascade constraints;
drop table 	PRODUCER_INFO	cascade constraints;
drop table 	ARTIST	cascade constraints;
drop table 	PRICING	cascade constraints;
drop table 	ALBUM_INFO	cascade constraints;
drop table 	SONG	cascade constraints;
drop table 	POPULAR_ARTISTSONGS	cascade constraints;
drop table 	GENRE	cascade constraints;
drop table 	CATEGORY	cascade constraints;
drop table 	LYRICS	cascade constraints;
drop table 	USER_INFO	cascade constraints;
drop table 	ROLE	cascade constraints;
drop table 	FAVORITE_SONGS	cascade constraints;
drop table 	COMMENTS	cascade constraints;
drop table 	ORDER_DETAILS	cascade constraints;
drop table 	STUDENTS	cascade constraints;
drop table 	BAND_INFO	cascade constraints;
drop table 	LOGMNR_GT_TAB_INCLUDE$	cascade constraints;
drop table 	LOGMNR_GT_USER_INCLUDE$	cascade constraints;
drop table 	LOGMNR_GT_XID_INCLUDE$	cascade constraints;
drop table 	LOGMNRT_MDDL$	cascade constraints;
drop table 	OL$	cascade constraints;
drop table 	OL$HINTS	cascade constraints;
drop table 	OL$NODES	cascade constraints;
drop table 	LOGMNR_DICTSTATE$	cascade constraints;
drop table 	LOGMNRC_GTLO	cascade constraints;
drop table 	LOGMNRC_GTCS	cascade constraints;
drop table 	LOGMNRC_SEQ_GG	cascade constraints;
drop table 	LOGMNRC_CON_GG	cascade constraints;
drop table 	LOGMNRC_CONCOL_GG	cascade constraints;
drop table 	LOGMNRC_IND_GG	cascade constraints;
drop table 	LOGMNRC_INDCOL_GG	cascade constraints;
drop table 	LOGMNRC_SHARD_TS	cascade constraints;
drop table 	LOGMNRC_TSPART	cascade constraints;
drop table 	LOGMNRC_TS	cascade constraints;
drop table 	LOGMNRC_GSII	cascade constraints;
drop table 	LOGMNRC_GSBA	cascade constraints;
drop table 	LOGMNR_SEED$	cascade constraints;
drop table 	LOGMNR_DICTIONARY$	cascade constraints;
drop table 	LOGMNR_OBJ$	cascade constraints;
drop table 	LOGMNR_TAB$	cascade constraints;
drop table 	LOGMNR_COL$	cascade constraints;
drop table 	LOGMNR_ATTRCOL$	cascade constraints;
drop table 	LOGMNR_TS$	cascade constraints;
drop table 	LOGMNR_IND$	cascade constraints;
drop table 	LOGMNR_USER$	cascade constraints;
drop table 	LOGMNR_TABPART$	cascade constraints;
drop table 	LOGMNR_TABSUBPART$	cascade constraints;
drop table 	LOGMNR_TABCOMPART$	cascade constraints;
drop table 	LOGMNR_TYPE$	cascade constraints;
drop table 	LOGMNR_COLTYPE$	cascade constraints;
drop table 	LOGMNR_ATTRIBUTE$	cascade constraints;
drop table 	LOGMNR_LOB$	cascade constraints;
drop table 	LOGMNR_CON$	cascade constraints;
drop table 	LOGMNR_CONTAINER$	cascade constraints;
drop table 	LOGMNR_CDEF$	cascade constraints;
drop table 	LOGMNR_CCOL$	cascade constraints;
drop table 	LOGMNR_ICOL$	cascade constraints;
drop table 	LOGMNR_LOBFRAG$	cascade constraints;
drop table 	LOGMNR_INDPART$	cascade constraints;
drop table 	LOGMNR_INDSUBPART$	cascade constraints;
drop table 	LOGMNR_INDCOMPART$	cascade constraints;
drop table 	LOGMNR_LOGMNR_BUILDLOG	cascade constraints;
drop table 	LOGMNR_NTAB$	cascade constraints;
drop table 	LOGMNR_OPQTYPE$	cascade constraints;
drop table 	LOGMNR_SUBCOLTYPE$	cascade constraints;
drop table 	LOGMNR_KOPM$	cascade constraints;
drop table 	LOGMNR_PROPS$	cascade constraints;
drop table 	LOGMNR_ENC$	cascade constraints;
drop table 	LOGMNR_REFCON$	cascade constraints;
drop table 	LOGMNR_IDNSEQ$	cascade constraints;
drop table 	LOGMNR_PARTOBJ$	cascade constraints;
drop table 	LOGMNRP_CTAS_PART_MAP	cascade constraints;
drop table 	LOGMNR_SHARD_TS	cascade constraints;
drop table 	LOGSTDBY$APPLY_PROGRESS	cascade constraints;