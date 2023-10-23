read -p "输入提交信息: " commit_log

# 白底黑字效果
echo -e "\033[47;30m>>>>>>>>>>>>>>>>>>>>git add .<<<<<<<<<<<<<<<<<<<<\033[0m"
git add .
echo -e "\033[47;30m>>>>>>>>>>>>>>>>>>>>git commit -m <<<<<<<<<<<<<<<<<<<<\033[0m"
git commit -m "${commit_log}"
echo -e "\033[47;30m>>>>>>>>>>>>>>>>>>>>git push gitee master<<<<<<<<<<<<<<<<<<<<\033[0m"
git push gitee master
echo -e "\033[47;30m>>>>>>>>>>>>>>>>>>>>git push github master<<<<<<<<<<<<<<<<<<<<\033[0m"
git push github master

# 执行完毕不退出
exec /bin/bash
