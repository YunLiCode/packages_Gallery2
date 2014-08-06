.class public Lcom/google/android/apps/lightcycle/panorama/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;
    }
.end annotation


# static fields
.field private static final ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

.field private static final DEVICE_CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_DEVICE_SUPPORTED:Z

.field private static final SUPPORTED_DEVICES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/high16 v11, 0x42580000

    const v10, 0x426e6666

    const/high16 v9, 0x42be0000

    const/high16 v8, 0x42820000

    const/high16 v7, 0x42b40000

    .line 38
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->TAG:Ljava/lang/String;

    .line 60
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Galaxy Nexus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Wingman"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GalaxySZ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SAMSUNG-SGH-I747"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SGH-I747"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SAMSUNG-SCH-I535"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SCH-I535"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SAMSUNG-SGH-T999"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SGH-T999"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SAMSUNG-SPH-L710"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SPH-L710"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SAMSUNG-SCH-R530"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SCH-R530"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GT-I9300"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "occam"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Nexus 4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "manta"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Nexus 10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->SUPPORTED_DEVICES:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    .line 70
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Galaxy Nexus"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42aa0000

    const/high16 v4, 0x424f0000

    invoke-direct {v2, v3, v9, v8, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Wingman"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42c80000

    const/high16 v4, 0x428c0000

    invoke-direct {v2, v3, v7, v7, v4}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "GalaxySZ"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42960000

    const/high16 v4, 0x42a00000

    const/high16 v5, 0x425c0000

    const v6, 0x42466666

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SAMSUNG-SGH-I747"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SGH-I747"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SAMSUNG-SCH-I535"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SCH-I535"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SAMSUNG-SGH-T999"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SGH-T999"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SAMSUNG-SPH-L710"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SPH-L710"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SAMSUNG-SCH-R530"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "SCH-R530"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "GT-I9300"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v10}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "occam"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42660000

    invoke-direct {v2, v7, v9, v8, v3}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Nexus 4"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42660000

    invoke-direct {v2, v7, v9, v8, v3}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "manta"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v11}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Nexus 10"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    invoke-direct {v2, v7, v9, v8, v11}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v1, "Default"

    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    const/high16 v3, 0x42960000

    const/high16 v4, 0x42a00000

    const/high16 v5, 0x425c0000

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isDeviceSupportedInternal()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->IS_DEVICE_SUPPORTED:Z

    .line 96
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getDeviceConfig()Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getCameraFieldOfViewDegrees(F)F
    .locals 3
    .param p0, "reportedFovDegrees"    # F

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->cameraFovDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 107
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget p0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->cameraFovDegrees:F

    .line 114
    .end local p0    # "reportedFovDegrees":F
    :cond_0
    :goto_0
    return p0

    .line 109
    .restart local p0    # "reportedFovDegrees":F
    :cond_1
    const/high16 v0, 0x43200000

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 110
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reported FOV is larger than the maximum allowed at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/high16 p0, 0x425c0000

    goto :goto_0
.end method

.method private static getDeviceConfig()Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;
    .locals 4

    .prologue
    .line 188
    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "config":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    .line 193
    .end local v0    # "config":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->DEVICE_CONFIG:Ljava/util/Map;

    const-string v3, "Default"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    goto :goto_0
.end method

.method public static getOpenGlDefaultFieldOfViewDegrees()F
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glFovDegrees:F

    return v0
.end method

.method public static getOpenGlMaxFieldOfViewDegrees()F
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glMaxFovDegrees:F

    return v0
.end method

.method public static getOpenGlMinFieldOfViewDegrees()F
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->ACTIVE_CONFIG:Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;

    iget v0, v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glMinFovDegrees:F

    return v0
.end method

.method public static isDeviceSupported()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->IS_DEVICE_SUPPORTED:Z

    return v0
.end method

.method private static isDeviceSupportedInternal()Z
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->reportBuild()V

    .line 176
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->SUPPORTED_DEVICES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 177
    .local v3, "supported":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const/4 v4, 0x1

    .line 181
    .end local v3    # "supported":Ljava/lang/String;
    :goto_1
    return v4

    .line 176
    .restart local v3    # "supported":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "supported":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isGalaxySz()Z
    .locals 2

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GalaxySZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWingman()Z
    .locals 2

    .prologue
    .line 144
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Wingman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static reportBuild()V
    .locals 3

    .prologue
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "build":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hardware : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Brand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Product : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Board : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 203
    return-void
.end method
