@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPRTBTMG'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZPRR_TBTMG
  as select from ZTB_TMG
{
  key plant as Plant,
  plant_name as PlantName,
  plant_addr1 as PlantAddr1,
  plant_state as PlantState,
  created_on as CreatedOn,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
}
