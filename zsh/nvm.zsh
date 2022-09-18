# nvm 入れてる場合に nvm をロードすると遅いので遅延ロードするための設定
# nvm ロードしない場合はインストール済み最新版の node を使うようにする
# https://qiita.com/uasi/items/80865646607b966aedc8

export NVM_DIR="$HOME/.nvm"

LATEST_VERSION_DIR=`ls $NVM_DIR/versions/node | tail -n 1`
export PATH="$NVM_DIR/versions/node/$LATEST_VERSION_DIR/bin:$PATH"

nvm() {
    unset -f nvm
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
    nvm "$@"
}
