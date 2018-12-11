#include "cWait.h"
#include <iostream>

cWait::cWait()
{
	this->m_timeToWait = 0.0f;
	this->m_timeWaitedSoFar = 0.0f;
	this->upper = 0.0f;
	this->down = 0.0f;
	return;
}


void cWait::Initialize(std::vector<sNVPair> vecNVPairs)
{
	this->m_timeToWait = vecNVPairs[0].fValue;
	this->down = vecNVPairs[1].fValue;
	this->upper = vecNVPairs[2].fValue;
	if (this->upper != 0) { this->m_timeToWait = rand() % this->upper + this->down; }
	
	return;
}

// These are both called every frame 
void cWait::Update(double deltaTime)
{
	this->m_timeWaitedSoFar += (float)deltaTime;
	std::cout << "Waiting..." << this->m_timeWaitedSoFar
		<< " of " << this->m_timeToWait << std::endl;
	return;
}

bool cWait::isFinished(void)
{
	if (this->m_timeWaitedSoFar >= this->m_timeToWait)
	{
		return true;
	}
	return false;
}

