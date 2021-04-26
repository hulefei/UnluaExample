// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Actor1.generated.h"

UCLASS()
class UNLUAEXAMPLE_API AActor1 : public AActor
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties
	AActor1();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;
	UFUNCTION(BlueprintCallable)
	virtual void GetPlayerBaseInfo(int32 &Level, float &Health, FString &Name);
};
