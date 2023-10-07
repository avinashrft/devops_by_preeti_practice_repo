sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install maven -y
sudo yum install git -y
if [ -d "devops_by_preeti_practice_repo" ]
then
   echo "repo is cloned and exists"
   cd /home/ec2-user/devops_by_preeti_practice_repo
   git pull origin main
else
  git clone https://github.com/avinashrft/devops_by_preeti_practice_repo.git
fi
  cd /home/ec2-user/devops_by_preeti_practice_repo
  mvn package