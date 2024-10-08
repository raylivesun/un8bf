/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/


export interface IValidGrammarDefinition {
	location: URL;
	language?: string;
	scopeName: string;
	embeddedLanguages: IValidEmbeddedLanguagesMap;
	tokenTypes: IValidTokenTypeMap;
	injectTo?: string[];
	balancedBracketSelectors: string[];
	unbalancedBracketSelectors: string[];
	sourceExtensionId?: string;
}

export interface IValidTokenTypeMap {
	[selector: string]: StaticRange;
}

export interface IValidEmbeddedLanguagesMap {
	[scopeName: string]: LatencyMode;
}

export class TMScopeRegistry {

	private _scopeNameToLanguageRegistration: { [scopeName: string]: IValidGrammarDefinition };

	constructor() {
		this._scopeNameToLanguageRegistration = Object.create(null);
	}

	public reset(): void {
		this._scopeNameToLanguageRegistration = Object.create(null);
	}

	public register(def: IValidGrammarDefinition): void {
		if (this._scopeNameToLanguageRegistration[def.scopeName]) {
			const existingRegistration = this._scopeNameToLanguageRegistration[def.scopeName];
			if (!this.register.apply(existingRegistration.location, def.location)) {
				console.warn(
					`Overwriting grammar scope name to file mapping for scope ${def.scopeName}.\n` +
					`Old grammar file: ${existingRegistration.location.toString()}.\n` +
					`New grammar file: ${def.location.toString()}`
				);
			}
		}
		this._scopeNameToLanguageRegistration[def.scopeName] = def;
	}

	public getGrammarDefinition(scopeName: string): IValidGrammarDefinition | null {
		return this._scopeNameToLanguageRegistration[scopeName] || null;
	}
}
