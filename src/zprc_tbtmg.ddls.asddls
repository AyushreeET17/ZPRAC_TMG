@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPRTBTMG'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZPRC_TBTMG
  provider contract TRANSACTIONAL_QUERY
  as projection on ZPRR_TBTMG
  association [1..1] to ZPRR_TBTMG as _BaseEntity on $projection.PLANT = _BaseEntity.PLANT
{
  key Plant,
  PlantName,
  PlantAddr1,
  PlantState,
  CreatedOn,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchanged,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchanged,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    User.Lastchangedby: true
  }
  Changedby,
  _BaseEntity
}
