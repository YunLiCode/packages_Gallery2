.class final Lcom/google/android/picasasync/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/GDataClient$Operation;
    }
.end annotation


# instance fields
.field private mAborted:Z

.field private mAuthToken:Ljava/lang/String;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "GData/1.0; gzip"

    invoke-static {v0}, Lcom/google/android/picasastore/HttpUtils;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 71
    return-void
.end method

.method private callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V
    .locals 18
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "operation"    # Lcom/google/android/picasasync/GDataClient$Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/picasasync/GDataClient;->mAborted:Z

    if-eqz v15, :cond_0

    new-instance v15, Ljava/io/IOException;

    const-string v16, "operation aborted"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 148
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 147
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/picasasync/GDataClient;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const-string v15, "GData-Version"

    const-string v16, "4.0"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v15, "Accept-Encoding"

    const-string v16, "gzip"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 158
    .local v2, "authToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 159
    const-string v15, "Authorization"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "GoogleLogin auth="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 164
    .local v6, "etag":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 165
    const-string v15, "If-None-Match"

    move-object/from16 v0, p1

    invoke-interface {v0, v15, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    const/4 v9, 0x0

    .line 171
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 172
    .local v10, "startTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-static/range {v15 .. v16}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 193
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    .line 195
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    .line 198
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 199
    .local v12, "status":I
    const/4 v13, 0x0

    .line 200
    .local v13, "stream":Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 201
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_3

    .line 203
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 204
    if-eqz v13, :cond_3

    .line 205
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    .line 206
    .local v8, "header":Lorg/apache/http/Header;
    if-eqz v8, :cond_3

    .line 207
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "gzip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 208
    new-instance v14, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v14, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v13    # "stream":Ljava/io/InputStream;
    .local v14, "stream":Ljava/io/InputStream;
    move-object v13, v14

    .line 214
    .end local v8    # "header":Lorg/apache/http/Header;
    .end local v14    # "stream":Ljava/io/InputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_3
    const-string v15, "ETag"

    invoke-interface {v9, v15}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 215
    .local v7, "etagHeader":Lorg/apache/http/Header;
    move-object/from16 v0, p2

    iput v12, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    .line 216
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    :goto_1
    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 221
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    if-nez v15, :cond_4

    .line 222
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 223
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 226
    :cond_4
    return-void

    .line 174
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "etagHeader":Lorg/apache/http/Header;
    .end local v10    # "startTime":J
    .end local v12    # "status":I
    .end local v13    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 177
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/picasasync/GDataClient;->mAborted:Z

    if-eqz v15, :cond_5

    throw v3

    .line 178
    :catchall_1
    move-exception v15

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 193
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v15

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    throw v15

    .line 178
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 180
    :try_start_8
    const-string v15, "GDataClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Request failed, retry again: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 185
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 186
    .restart local v10    # "startTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-static/range {v15 .. v16}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 193
    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    goto/16 :goto_0

    .line 188
    .end local v10    # "startTime":J
    :catch_1
    move-exception v4

    .line 189
    .local v4, "e2":Ljava/io/IOException;
    :try_start_a
    const-string v15, "GDataClient"

    const-string v16, "retry failed again"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 216
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "etagHeader":Lorg/apache/http/Header;
    .restart local v10    # "startTime":J
    .restart local v12    # "status":I
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_6
    const/4 v15, 0x0

    goto :goto_1

    .line 221
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "etagHeader":Lorg/apache/http/Header;
    .end local v12    # "status":I
    .end local v13    # "stream":Ljava/io/InputStream;
    :catchall_3
    move-exception v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 222
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 223
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_7

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 224
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_7
    throw v15
.end method

.method private static replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized abortCurrentOperation()V
    .locals 3

    .prologue
    .line 127
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/picasasync/GDataClient;->mAborted:Z

    .line 128
    iget-object v1, p0, Lcom/google/android/picasasync/GDataClient;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasasync/GDataClient;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "GDataClient"

    const-string v2, "trying to abort HTTP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    .locals 2
    .param p1, "feedUrl"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/google/android/picasasync/GDataClient$Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/google/android/picasasync/GDataClient;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/picasasync/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V

    .line 83
    return-void
.end method

.method public declared-synchronized isOperationAborted()Z
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/picasasync/GDataClient;->mAborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 79
    return-void
.end method
