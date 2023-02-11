variable "SYSTEM" {
    description = "システム情報"
    default = {
        NAME = "sample-system"
        ENV  = "test"
        AZ   = "ap-northeast-1a"
    }
}
variable "LIGHTSAIL" {
    description = "デプロイ情報"
    default = {
        NAME         = "municipal-page"
        BLUEPRINT_ID = "wordpress"
        BUNDLE_ID    = "small_2_0"
   }
}