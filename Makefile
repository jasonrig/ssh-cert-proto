.PHONY: build_protos

protos = $(wildcard *.proto)

build_protos: $(protos)
	protoc --go_out=.. --go_opt=paths=source_relative --go-grpc_out=.. --go-grpc_opt=paths=source_relative ${protos}