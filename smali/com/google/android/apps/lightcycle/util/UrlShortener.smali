.class public Lcom/google/android/apps/lightcycle/util/UrlShortener;
.super Ljava/lang/Object;
.source "UrlShortener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/lightcycle/util/UrlShortener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/UrlShortener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyAeGRfhdlINliJODCqF7rs-CUyofCVfkk0"

    return-object v0
.end method
