# vagrant-box-centos7-develop

基本的な開発環境をインストールした CentOS 7.7

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-centos7-develop.git
cd  vagrant-box-centos7-develop
```

### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/centos7-develop  centos7-develop.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/centos7-develop
- https://app.vagrantup.com/takahiro-itou/boxes/centos7-develop

