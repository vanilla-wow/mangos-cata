alter table guild_member add BankResetTimeTab6 int(11) unsigned NOT NULL DEFAULT '0' after BankRemSlotsTab5;
alter table guild_member add BankRemSlotsTab6 int(11) unsigned NOT NULL DEFAULT '0' after BankResetTimeTab6;
alter table guild_member add BankResetTimeTab7 int(11) unsigned NOT NULL DEFAULT '0' after BankRemSlotsTab6;
alter table guild_member add BankRemSlotsTab7 int(11) unsigned NOT NULL DEFAULT '0' after BankResetTimeTab7;

alter table guild_member add achievementPoints int(11) unsigned NOT NULL DEFAULT '0' after BankRemSlotsTab7;
alter table guild_member add firstProfessionId int(11) unsigned NOT NULL DEFAULT '0' after achievementPoints;
alter table guild_member add firstProfessionRank int(11) unsigned NOT NULL DEFAULT '0' after firstProfessionId;
alter table guild_member add firstProfessionValue int(11) unsigned NOT NULL DEFAULT '0' after firstProfessionRank;
alter table guild_member add secondProfessionId int(11) unsigned NOT NULL DEFAULT '0' after firstProfessionValue;
alter table guild_member add secondProfessionRank int(11) unsigned NOT NULL DEFAULT '0' after secondProfessionId;
alter table guild_member add secondProfessionValue int(11) unsigned NOT NULL DEFAULT '0' after secondProfessionRank;
