module "lightsail-wp" {
    source                 = "../../modules/lightsail-deploy"
    system_name            = var.SYSTEM.NAME
    system_env             = var.SYSTEM.ENV
    az                     = var.SYSTEM.AZ
    lightsail_name         = var.LIGHTSAIL.NAME
    lightsail_blueprint_id = var.LIGHTSAIL.BLUEPRINT_ID
    lightsail_bundle_id    = var.LIGHTSAIL.BUNDLE_ID
}