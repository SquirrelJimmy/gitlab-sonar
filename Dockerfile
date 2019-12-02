FROM sonarqube:8.0-community-beta

ADD sonar-l10n-zh-plugin-1.29.jar /opt/sonarqube/extensions/plugins/
ADD sonar-gitlab-plugin-4.1.0-SNAPSHOT.jar /opt/sonarqube/extensions/plugins/
ADD backelite-sonar-swift-plugin-0.4.5.jar /opt/sonarqube/extensions/plugins/
