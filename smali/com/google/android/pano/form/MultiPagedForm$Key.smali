.class final enum Lcom/google/android/pano/form/MultiPagedForm$Key;
.super Ljava/lang/Enum;
.source "MultiPagedForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/form/MultiPagedForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/pano/form/MultiPagedForm$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/pano/form/MultiPagedForm$Key;

.field public static final enum CANCEL:Lcom/google/android/pano/form/MultiPagedForm$Key;

.field public static final enum DONE:Lcom/google/android/pano/form/MultiPagedForm$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/google/android/pano/form/MultiPagedForm$Key;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/form/MultiPagedForm$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/MultiPagedForm$Key;->DONE:Lcom/google/android/pano/form/MultiPagedForm$Key;

    new-instance v0, Lcom/google/android/pano/form/MultiPagedForm$Key;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/pano/form/MultiPagedForm$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/MultiPagedForm$Key;->CANCEL:Lcom/google/android/pano/form/MultiPagedForm$Key;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/pano/form/MultiPagedForm$Key;

    sget-object v1, Lcom/google/android/pano/form/MultiPagedForm$Key;->DONE:Lcom/google/android/pano/form/MultiPagedForm$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/pano/form/MultiPagedForm$Key;->CANCEL:Lcom/google/android/pano/form/MultiPagedForm$Key;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/pano/form/MultiPagedForm$Key;->$VALUES:[Lcom/google/android/pano/form/MultiPagedForm$Key;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/pano/form/MultiPagedForm$Key;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/android/pano/form/MultiPagedForm$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/form/MultiPagedForm$Key;

    return-object v0
.end method

.method public static values()[Lcom/google/android/pano/form/MultiPagedForm$Key;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/pano/form/MultiPagedForm$Key;->$VALUES:[Lcom/google/android/pano/form/MultiPagedForm$Key;

    invoke-virtual {v0}, [Lcom/google/android/pano/form/MultiPagedForm$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/pano/form/MultiPagedForm$Key;

    return-object v0
.end method
