rdict: rdict.c dict_clnt.c
	cc rdict.c dict_clnt.c -o rdict -lnsl

dict_server: dict_proc.c dict_svc.c
	cc dict_proc.c dict_svc.c -o dict_server -lnsl

clean:
	rm -rf dict_server rdict

all: dict_server rdict

.PHONY: all clean
