#!/bin/bash

wget https://binaries.cockroachdb.com/cockroach-v19.2.2.linux-amd64.tgz
tar xzf cockroach-v19.2.2.linux-amd64.tgz
sudo cp cockroach-v19.2.2.linux-amd64/cockroach /usr/local/bin

sudo mkdir /bfdata

sudo cockroach start --insecure --store=/bfdata --listen-addr=0.0.0.0:26257 --http-addr=0.0.0.0:8080 --background

sudo cockroach sql --insecure --host=localhost:26257

CREATE DATABASE bf;
CREATE USER bfuser;
GRANT ALL ON DATABASE bf TO bfuser;

USE bf;
CREATE table users ( userID INT PRIMARY KEY DEFAULT unique_rowid(), name STRING(50), picture STRING(300), status STRING(10), posts INT, comments INT, lastPostDate TIMESTAMP DEFAULT NOW(), createDate TIMESTAMP DEFAULT NOW());
CREATE table posts ( postID INT PRIMARY KEY DEFAULT unique_rowid(), userID INT, text STRING(300), name STRING(150), postDate TIMESTAMP DEFAULT NOW());
CREATE table comments ( commentID INT PRIMARY KEY DEFAULT unique_rowid(), postID INT, userID INT, text STRING(300),  postDate TIMESTAMP DEFAULT NOW());
CREATE table pictures ( pictureID STRING(300), picture BYTES );

exit
