// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"

#include "UnLuaInterface.h"
#include "GameFramework/GameModeBase.h"
#include "UnLuaGameMode.generated.h"

/**
 * 
 */
UCLASS()
class UNLUAEXAMPLE_API AUnLuaGameMode : public AGameModeBase, public IUnLuaInterface
{
	GENERATED_BODY()

public:
	virtual FString GetModuleName_Implementation() const override
	{
		return TEXT("UnLuaGameMode_C");
	}
};
