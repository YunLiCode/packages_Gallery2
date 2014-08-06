.class Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricsTrackingConnectionManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 124
    return-void
.end method


# virtual methods
.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 150
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    .line 151
    .local v0, "m":Lorg/apache/http/HttpConnectionMetrics;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getReceivedBytesCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementInBytes(J)V

    .line 153
    invoke-interface {v0}, Lorg/apache/http/HttpConnectionMetrics;->getSentBytesCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementOutBytes(J)V

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 156
    return-void
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    .line 129
    .local v0, "r":Lorg/apache/http/conn/ClientConnectionRequest;
    new-instance v1, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager$1;-><init>(Lcom/google/android/picasastore/HttpUtils$MetricsTrackingConnectionManager;Lorg/apache/http/conn/ClientConnectionRequest;)V

    return-object v1
.end method
