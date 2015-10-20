package ru.agentlab.maia.context.modifier

import javax.annotation.PostConstruct
import javax.inject.Inject
import ru.agentlab.maia.context.IContext
import ru.agentlab.maia.context.IInjector
import ru.agentlab.maia.task.ITask
import ru.agentlab.maia.task.sequential.SequentialTaskScheduler

class MaiaAgentContextModifier {

	@Inject
	IContext context

	@PostConstruct
	def void setup() {
		context => [
			putService(IContext.KEY_TYPE, "agent")
			getService(IInjector) => [
				deploy(SequentialTaskScheduler, ITask)
			]
		]
	}

}