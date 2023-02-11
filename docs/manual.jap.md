## 前提条件
次のツールが導入されている前提とします。

* [Terraform](https://registry.terraform.io/)
* [AWS CLI](https://aws.amazon.com/jp/cli/)

## 利用手順
1. 任意のディレクトリに当該リポジトリをクローンする。
2. 以下のファイルをエディタで開き、適切な値を設定し、保存します。
   
   * ファイル名
     * tasks/deploy-lightsail/variable.tf

   * 設定値 

        | 変数名 | 備考  
        | :--- | :--- 
        | ststem_name    | システム名を記述する
        | system_env     | システム環境名（テスト、ステージング本番）を記述する。
        | az             | デプロイする[az名](https://aws.amazon.com/jp/about-aws/global-infrastructure/regions_az/)を記述する。
        | lightsail_name | デプロイするLightsailの名称を記述する。
        | lightsail_blueprint_id | デプロイするLightsailのbrueprint id（設計図ID）を記述する。
        | lightsail_bundle_id | デプロイするlightsailのbundle id（インスタンスタイプ）を記述する。

3. 次のコマンドを実行し、Terraformの初期化を行う。

    * コマンド
      * Linux
         ```bash
        # カレントディレクトリの移動
        REPO_ROOT=<当該リポジトリのクローンで入れクトリパス>
        cd $REPO_ROOT/tasks/deploy-lightsail

        # Terraform 初期化
        terraform init  
        ```
      * MAC
        * No Content
      * Windows
        * No Content

4. 次のコマンドを実行し、Terraform Plan / Apply を実行する。

    * コマンド
      * Linux
        ```bash 
        # Plan
        terraform plan

        # Apply 
        terraform apply 
        ``` 
      * MAC
        * No Content
      * Windows
        * No Content