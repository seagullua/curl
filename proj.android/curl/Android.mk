LOCAL_PATH := $(call my-dir)/../

include $(CLEAR_VARS)

LOCAL_MODULE := curl_static

LOCAL_MODULE_FILENAME := libcurl

LOCAL_SRC_FILES := ../lib/x509asn1.c \
    ../lib/wildcard.c \
    ../lib/warnless.c \
    ../lib/version.c \
    ../lib/url.c \
    ../lib/transfer.c \
    ../lib/timeval.c \
    ../lib/tftp.c \
    ../lib/telnet.c \
    ../lib/strtoofft.c \
    ../lib/strtok.c \
    ../lib/strerror.c \
    ../lib/strequal.c \
    ../lib/strdup.c \
    ../lib/ssh.c \
    ../lib/splay.c \
    ../lib/speedcheck.c \
    ../lib/socks_sspi.c \
    ../lib/socks_gssapi.c \
    ../lib/socks.c \
    ../lib/smtp.c \
    ../lib/slist.c \
    ../lib/share.c \
    ../lib/sendf.c \
    ../lib/select.c \
    ../lib/security.c \
    ../lib/rtsp.c \
    ../lib/rawstr.c \
    ../lib/progress.c \
    ../lib/pop3.c \
    ../lib/pipeline.c \
    ../lib/pingpong.c \
    ../lib/parsedate.c \
    ../lib/openldap.c \
    ../lib/nwos.c \
    ../lib/nwlib.c \
    ../lib/nonblock.c \
    ../lib/non-ascii.c \
    ../lib/netrc.c \
    ../lib/multi.c \
    ../lib/mprintf.c \
    ../lib/memdebug.c \
    ../lib/md5.c \
    ../lib/md4.c \
    ../lib/llist.c \
    ../lib/ldap.c \
    ../lib/krb5.c \
    ../lib/inet_pton.c \
    ../lib/inet_ntop.c \
    ../lib/imap.c \
    ../lib/if2ip.c \
    ../lib/idn_win32.c \
    ../lib/http2.c \
    ../lib/http_proxy.c \
    ../lib/http_negotiate_sspi.c \
    ../lib/http_negotiate.c \
    ../lib/http_digest.c \
    ../lib/http_chunks.c \
    ../lib/http.c \
    ../lib/hostsyn.c \
    ../lib/hostip6.c \
    ../lib/hostip4.c \
    ../lib/hostip.c \
    ../lib/hostcheck.c \
    ../lib/hostasyn.c \
    ../lib/hmac.c \
    ../lib/hash.c \
    ../lib/gopher.c \
    ../lib/getinfo.c \
    ../lib/getenv.c \
    ../lib/ftplistparser.c \
    ../lib/ftp.c \
    ../lib/formdata.c \
    ../lib/fileinfo.c \
    ../lib/file.c \
    ../lib/escape.c \
    ../lib/easy.c \
    ../lib/dotdot.c \
    ../lib/dict.c \
    ../lib/curl_threads.c \
    ../lib/curl_sspi.c \
    ../lib/curl_sasl.c \
    ../lib/curl_rtmp.c \
    ../lib/curl_ntlm_wb.c \
    ../lib/curl_ntlm_msgs.c \
    ../lib/curl_ntlm_core.c \
    ../lib/curl_ntlm.c \
    ../lib/curl_multibyte.c \
    ../lib/curl_memrchr.c \
    ../lib/curl_gssapi.c \
    ../lib/curl_gethostname.c \
    ../lib/curl_fnmatch.c \
    ../lib/curl_addrinfo.c \
    ../lib/cookie.c \
    ../lib/content_encoding.c \
    ../lib/connect.c \
    ../lib/conncache.c \
    ../lib/bundles.c \
    ../lib/base64.c \
    ../lib/asyn-thread.c \
    ../lib/asyn-ares.c \
    ../lib/amigaos.c \
    ../lib/vtls/vtls.c \
    ../lib/vtls/qssl.c \
    ../lib/vtls/polarssl_threadlock.c \
    ../lib/vtls/polarssl.c \
    ../lib/vtls/openssl.c \
    ../lib/vtls/nss.c \
    ../lib/vtls/gtls.c \
    ../lib/vtls/gskit.c \
    ../lib/vtls/cyassl.c \
    ../lib/vtls/curl_schannel.c \
    ../lib/vtls/curl_darwinssl.c \
    ../lib/vtls/axtls.c \
    ../src/tool_xattr.c \
    ../src/tool_writeout.c \
    ../src/tool_writeenv.c \
    ../src/tool_vms.c \
    ../src/tool_util.c \
    ../src/tool_urlglob.c \
    ../src/tool_sleep.c \
    ../src/tool_setopt.c \
    ../src/tool_parsecfg.c \
    ../src/tool_paramhlp.c \
    ../src/tool_panykey.c \
    ../src/tool_operhlp.c \
    ../src/tool_operate.c \
    ../src/tool_msgs.c \
    ../src/tool_mfiles.c \
    ../src/tool_metalink.c \
    ../src/tool_main.c \
    ../src/tool_libinfo.c \
    ../src/tool_homedir.c \
    ../src/tool_helpers.c \
    ../src/tool_help.c \
    ../src/tool_getpass.c \
    ../src/tool_getparam.c \
    ../src/tool_formparse.c \
    ../src/tool_easysrc.c \
    ../src/tool_doswin.c \
    ../src/tool_dirhie.c \
    ../src/tool_convert.c \
    ../src/tool_cfgable.c \
    ../src/tool_cb_wrt.c \
    ../src/tool_cb_see.c \
    ../src/tool_cb_rea.c \
    ../src/tool_cb_prg.c \
    ../src/tool_cb_hdr.c \
    ../src/tool_cb_dbg.c \
    ../src/tool_bname.c \
    ../src/tool_binmode.c
	
common_CFLAGS := -Wpointer-arith -Wwrite-strings -Wunused -Winline -Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal -Wno-multichar -Wsign-compare -Wno-format-nonliteral -Wendif-labels -Wstrict-prototypes -Wdeclaration-after-statement -Wno-system-headers -DHAVE_CONFIG_H
LOCAL_CFLAGS += $(common_CFLAGS)
 
LOCAL_CFLAGS += -DHTTP_ONLY -DCURL_STATICLIB
LOCAL_EXPORT_CFLAGS := -DHTTP_ONLY -DCURL_STATICLIB

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../include $(LOCAL_PATH)/curl/

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include $(LOCAL_PATH) $(LOCAL_PATH)/curl/ $(LOCAL_PATH)/../lib


include $(BUILD_STATIC_LIBRARY)
