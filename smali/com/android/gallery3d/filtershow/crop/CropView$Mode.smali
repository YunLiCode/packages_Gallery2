.class final enum Lcom/android/gallery3d/filtershow/crop/CropView$Mode;
.super Ljava/lang/Enum;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/crop/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/filtershow/crop/CropView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

.field public static final enum MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

.field public static final enum NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v1, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->$VALUES:[Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/crop/CropView$Mode;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/crop/CropView$Mode;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->$VALUES:[Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    return-object v0
.end method
