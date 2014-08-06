.class Lcom/google/android/picasastore/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# instance fields
.field private mFilepath:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    .line 24
    iput-object p1, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/google/android/picasastore/VersionInfo;->loadVersions()V

    .line 26
    return-void
.end method

.method private loadVersions()V
    .locals 6

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 36
    invoke-direct {p0, v1}, Lcom/google/android/picasastore/VersionInfo;->parseLine(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 40
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 43
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "VersionInfo"

    const-string v5, "cannot load version"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 40
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 48
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 49
    .local v1, "pos":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "key":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    .local v4, "version":I
    iget-object v5, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v4    # "version":I
    :catch_0
    move-exception v2

    .line 56
    .local v2, "t":Ljava/lang/Throwable;
    const-string v5, "VersionInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail parse line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 66
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sync()V
    .locals 9

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "writer":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/picasastore/VersionInfo;->mFilepath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v3    # "writer":Ljava/io/PrintWriter;
    .local v4, "writer":Ljava/io/PrintWriter;
    :try_start_1
    iget-object v5, p0, Lcom/google/android/picasastore/VersionInfo;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "%s = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 79
    .end local v4    # "writer":Ljava/io/PrintWriter;
    .local v2, "t":Ljava/lang/Throwable;
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    :goto_1
    :try_start_2
    const-string v5, "VersionInfo"

    const-string v6, "sync file fail"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 83
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 81
    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "writer":Ljava/io/PrintWriter;
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 82
    .end local v4    # "writer":Ljava/io/PrintWriter;
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    goto :goto_2

    .line 81
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "writer":Ljava/io/PrintWriter;
    .restart local v4    # "writer":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/PrintWriter;
    .restart local v3    # "writer":Ljava/io/PrintWriter;
    goto :goto_3

    .line 78
    :catch_1
    move-exception v2

    goto :goto_1
.end method
