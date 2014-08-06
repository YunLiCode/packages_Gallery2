.class public Lcom/android/gallery3d/util/XmpUtilHelper;
.super Ljava/lang/Object;
.source "XmpUtilHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/adobe/xmp/XMPMeta;

    .end local p1    # "meta":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v0

    return v0
.end method
